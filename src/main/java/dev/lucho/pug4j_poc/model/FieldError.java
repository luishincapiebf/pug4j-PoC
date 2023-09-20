package dev.lucho.pug4j_poc.model;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class FieldError {

    private String field;
    private String errorCode;

}
