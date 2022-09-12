package com.example.nossocartaodocumentacao.controller.factory;

import com.example.nossocartaodocumentacao.controller.response.LivroResponse;
import com.example.nossocartaodocumentacao.model.Livro;

import java.util.List;
import java.util.stream.Collectors;

public class LivroFactory {


    public static List<LivroResponse> toResponseList(List<Livro> livrosList) {
        return livrosList.stream().map(livro -> new LivroResponse(
                livro.getId(),
                livro.getTitulo(),
                livro.getResumo(),
                livro.getSumario(),
                livro.getPreco(),
                livro.getNumeroDePaginas(),
                livro.getIsbn(),
                livro.getDataPublicacao(),
                livro.getCategoria().getNome(),
                livro.getAutor().getNome())).collect(Collectors.toList());
    }

    public static LivroResponse toResponse(Livro livro) {
        return new LivroResponse(
                livro.getId(),
                livro.getTitulo(),
                livro.getResumo(),
                livro.getSumario(),
                livro.getPreco(),
                livro.getNumeroDePaginas(),
                livro.getIsbn(),
                livro.getDataPublicacao(),
                livro.getCategoria().getNome(),
                livro.getAutor().getNome());
    }
}
