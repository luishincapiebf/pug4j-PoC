package dev.lucho.pug4j_poc.service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.itextpdf.html2pdf.HtmlConverter;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;
import de.neuland.pug4j.PugConfiguration;
import de.neuland.pug4j.template.ReaderTemplateLoader;
import dev.lucho.pug4j_poc.model.TemplateDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CertificateService {

    @Autowired
    private TemplateService templateService;

    public byte[] createCertificate(UUID id) throws IOException, DocumentException {
        TemplateDTO template = templateService.get(id);

        PugConfiguration config = new PugConfiguration();
        config.setTemplateLoader(new ReaderTemplateLoader(new StringReader(template.getContent()), template.getName()));

        // Process the template and generate PDF
        StringWriter stringWriter = new StringWriter();

        // Create dataModel
        Map<String, Object> dataModel = new HashMap<>();
        dataModel.put("logo", "https://placehold.co/200x25/F1F1F1/000?text=Blankfactor&font=raleway");

        Map<String, Object> certificate = new HashMap<>();
        certificate.put("expeditionDate", "2021-01-01");
        certificate.put("addressedTo", "Mike Doe");
        certificate.put("withSalary", true);

        dataModel.put("certificate", certificate);

        Map<String, Object> employee = new HashMap<>();
        employee.put("names", "Big Joe");
        employee.put("governmentId", "123456789");
        employee.put("position", "Software Engineer");
        employee.put("startDate", "2021-01-01");
        employee.put("salaryInLetters", "One thousand");
        employee.put("salaryInNumbers", "1000");

        dataModel.put("employee", employee);

        Map<String, Object> signer = new HashMap<>();
        signer.put("name", "John Doe");
        signer.put("position", "CEO");
        signer.put("email", "jhon@email.com");
        signer.put("signature", "https://placehold.co/280x70/F1F1F1/000?text=Signer%201&font=raleway");

        dataModel.put("signer", signer);

        config.renderTemplate(config.getTemplate(template.getName()), dataModel, stringWriter);

        // Create a PDF document using iText
        ByteArrayOutputStream pdfOutputStream = new ByteArrayOutputStream();
        Document document = new Document();
        PdfWriter.getInstance(document, pdfOutputStream);

        HtmlConverter.convertToPdf(stringWriter.toString(), pdfOutputStream);

        return pdfOutputStream.toByteArray();

    }

}
