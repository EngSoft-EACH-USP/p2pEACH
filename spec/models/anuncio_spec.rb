require 'rails_helper'
require 'spec_helper'

RSpec.describe Anuncio, type: :model do
  it 'invalido sem dono' do
    anuncio = Anuncio.new
    anuncio.item = "Teste"
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.save
    expect(anuncio).not_to be_valid
  end

  it 'invalido sem item' do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    usuario = Usuario.order("id").last
    anuncio = Anuncio.new
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.usuario_id = usuario.id
    anuncio.tipo = "emprestimo"
    anuncio.save
    expect(anuncio).not_to be_valid
  end

  it 'invalido sem tipo' do
    usuario = Usuario.new
    usuario.nome = "Billy"
    usuario.snome = "Bob"
    usuario.email = "billybob@usp.br"
    usuario.password = "senha"
    usuario.fone = "912345678"
    usuario.save

    usuario = Usuario.order("id").last
    anuncio = Anuncio.new
    anuncio.item = "Teste"
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.usuario_id = usuario.id
    anuncio.save
    expect(anuncio).not_to be_valid
  end
end
