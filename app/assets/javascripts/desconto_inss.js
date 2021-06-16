function calcDescontoInss(el) {
  $.ajax({
    url: '/proponente/desconto_inss',
    data: { salario: el.value }
  }).done((data) => {
    $(".desconto-inss-content input").val(data.salario)
  }).fail(()=> {
    alert("Erro ao obter desconto INSS, verifique os arquivos")
  })
}