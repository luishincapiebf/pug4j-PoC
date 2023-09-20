INSERT INTO templates (id, name, content, date_created, last_updated)
VALUES ('88cd425c-9baf-428d-9976-d90886e29b71',
        'temp1',
        'doctype html
        html(lang="en")
  head
    meta(charset="UTF-8" http-equiv="content-type")
    style(type="text/css").
      @import url(https://themes.googleusercontent.com/fonts/css?kit=1ZpBgFLQKwrA6c9iLOONVLLukJZ0tncL9DlcRrH6sPk);
      // Add your CSS styles here

  body.c15.c17.doc-content
    p.c9
      span(style="overflow: hidden; display: inline-block; margin: 0px 0px; border: 0px solid #000000; transform: rotate(0rad) translateZ(0px); -webkit-transform: rotate(0rad) translateZ(0px); width: 207.32px; height: 22.5px;")
        img(src=logo alt="" style="width: 200px; height: 25px; margin-left: 0px; margin-top: 0px; transform: rotate(0rad) translateZ(0px); -webkit-transform: rotate(0rad) translateZ(0px);" title="")
    p.c4
      span.c5
    p.c4
      span.c5
    p.c9.c18
      span.c5
    p.c14
      span.c5
      if certificate.addressedTo
        p.c14
          span.c2 #{certificate.addressedTo}
    p.c14.c18
      span.c5
    p.c14
      span.c5 CERTIFIES
    p.c8
      span.c7.c2
    p.c8
      span.c7.c2
    p.c8
      span.c7.c2
    p.c11
      span.c0 #{employee.names}
      span.c2 , identified with citizenship card No.
      span.c0 #{employee.governmentId}
      span.c2 &nbsp;is currently working in the company, performing the position of
      span.c0 #{employee.position}
      span.c2 &nbsp;since
      span.c0 #{employee.startDate}
      span.c2 &nbsp;with an indefinite term contract
      if certificate.withSalary
        span.c2 and earning a monthly salary of
        span.c0 #{employee.salaryInLetters}
        span.c2 &nbsp;M.L. $
        span.c0 #{employee.salaryInNumbers}
      span.c7.c2.
    p.c8
      span.c7.c2
    p.c8
      span.c7.c2
    p.c10
      span.c2 For the record of the foregoing was signed in Medellín on
      span.c0 #{certificate.expeditionDate}
      span.c7.c2.
    p.c4(id="h.gjdgxs")
      span.c7.c2
    p.c19
      span.c2.c7 Sincerely,
    p.c1
      span.c7.c2
    p.c20
      span(style="overflow: hidden; display: inline-block; margin: 0px 0px; border: 0px solid #000000; transform: rotate(0rad) translateZ(0px); -webkit-transform: rotate(0rad) translateZ(0px); width: 100px; height: 50px;")
        img(src=signer.signature alt="" title="" style="width: 280px; height: 70px; margin-left: -93.28px; margin-top: 1.74px; transform: rotate(0rad) translateZ(0px); -webkit-transform: rotate(0rad) translateZ(0px);")
    p.c1
      span.c12
    p.c8
      span.c12
    p.c11
      span.c3.c2 #{signer.name}
    p.c11
      span.c13 #{signer.position}
    p.c11
      span.c2.c15 #{signer.email}
            ',
        '2023-09-18T12:00:00Z',
        '2023-09-18T12:30:00Z'),
       ('88cd425c-9baf-428d-9976-d90886e29b72',
        'temp2',
        'doctype html
            html(lang="en")
              head
                meta(charset="UTF-8" http-equiv="content-type")

              body
                p
                    img(src=logo alt="")
                p
                  span
                p
                  span
                p
                  span
                p
                  span
                  if certificate.addressedTo
                    p
                      span = certificate.addressedTo
                p
                  span
                p
                  span CERTIFIES

                  span
                p
                  span
                p
                  span
                p
                  span = employee.names
                  span , identified with citizenship card No.
                  span = employee.governmentId
                  span &nbsp;is currently working in the company, performing the position of
                  span = employee.position
                  span &nbsp;since
                  span = employee.startDate
                  span &nbsp;with an indefinite term contract
                  if certificate.withSalary
                    span and earning a monthly salary of
                    span = employee.salaryInLetters
                    span &nbsp;M.L. $
                    span = employee.salaryInNumbers
                  span .
                p
                  span
                p
                  span
                p
                  span For the record of the foregoing was signed in Medellín on
                  span = certificate.expeditionDate
                  span .
                p
                  span
                p
                  span Sincerely,
                p
                  span
                p
                    img(src=signer.signature)
                p
                  span
                p
                  span
                p
                  span = signer.name
                p
                  span = signer.position
                p
                  span = signer.email
        ',
        '2023-09-18T12:00:00Z',
        '2023-09-18T12:30:00Z');