package com.example.nossocartaodocumentacao.controller.response;

import com.example.nossocartaodocumentacao.controller.request.LivroRequest;
import com.example.nossocartaodocumentacao.model.Livro;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.hibernate.validator.constraints.ISBN;
import org.hibernate.validator.constraints.Length;

import javax.persistence.Column;
import javax.validation.constraints.Future;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;

public record LivroResponse(

        Long id,

        String titulo,

        String resumo,

        String sumario,

        BigDecimal preco,

        int numeroDePaginas,

        String isbn,

        @JsonFormat(pattern = "dd/MM/yyyy")
        LocalDate dataPublicacao,

        String categoria,

        String autor
) {
}
