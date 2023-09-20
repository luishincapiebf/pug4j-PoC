# Jade4jPoC

pug4j's intention is to be able to process pug templates in Java without the need of a JavaScript environment, while
being fully compatible with the original pug syntax.

pug4j was formerly known as jade4j. Because of the naming change of the javascript version and the alignment to the
featureset of pug.js (https://pugjs.org/) we decided to switch the name.

With the addition of a new GraalJsExpressionHandler your code can be more compatible to the js version than before.

Usefully links

http://naltatis.github.io/jade-syntax-docs/#case

http://jade-lang.com/reference

https://github.com/neuland/pug4j

## Development

When starting the application `docker compose up` is called and the app will connect to the contained services.
[Docker](https://www.docker.com/get-started/) must be available on the current system.

During development it is recommended to use the profile `local`. In IntelliJ `-Dspring.profiles.active=local` can be
added in the VM options of the Run Configuration after enabling this property in "Modify options". Create your own
`application-local.yml` file to override settings for development.

Lombok must be supported by your IDE. For IntelliJ install the Lombok plugin and enable annotation processing -
[learn more](https://bootify.io/next-steps/spring-boot-with-lombok.html).

After starting the application it is accessible under `localhost:8080`.

## Build

The application can be built using the following command:

```
mvnw clean package
```

Start your application with the following command - here with the profile `production`:

```
java -Dspring.profiles.active=production -jar ./target/Jade4j-PoC-0.0.1-SNAPSHOT.jar
```

If required, a Docker image can be created with the Spring Boot plugin. Add `SPRING_PROFILES_ACTIVE=production` as
environment variable when running the container.

```
mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=dev.lucho/jade4j-po-c
```
