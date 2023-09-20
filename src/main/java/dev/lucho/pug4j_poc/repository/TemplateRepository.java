package dev.lucho.pug4j_poc.repository;

import dev.lucho.pug4j_poc.domain.Template;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;


public interface TemplateRepository extends JpaRepository<Template, UUID> {

    boolean existsByNameIgnoreCase(String name);

}
