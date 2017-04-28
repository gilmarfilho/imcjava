<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calculo IMC</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>

<%
  String sex = request.getParameter("sex");
  float weight = Float.parseFloat(request.getParameter("weight"));
  float height = Float.parseFloat(request.getParameter("height"));
  String mensagem = "";
  String tipoMensagem = "";

  if (weight == null){
    weight = 0;
  }
  if (height == null){
    height = 0;
  }
  float imc = weight / (height * height);

  if (sex.equals("Masculino")) {
      if (imc < 20) {
        mensagem = "Abaixo do Peso!";
        tipoMensagem = "warning";
      } else if (imc < 26.4) {
          mensagem = "Peso medio";
          tipoMensagem = "success";
      } else {
          mensagem = "Acima do Peso!";
          tipoMensagem = "warning";
      }
  } else {
    if (imc < 19.1) {
      mensagem = "Abaixo do Peso!";
      tipoMensagem = "warning";
    } else if (imc < 25.8) {
        mensagem = "Peso medio";
        tipoMensagem = "success";
    } else {
        mensagem = "Acima do Peso!";
        tipoMensagem = "warning";
    }
  }
%>

<body>
    <div class="col-md-12">
        <div class="modal-dialog" style="margin-bottom:0">
            <div class="modal-content">
                <div class="panel-heading">
                    <h1 class="panel-title">Calculo IMC</h1>
                </div>
                <div class="panel-body">
                    <form name="formulario">
                        <fieldset>
			    <div class="form-group">
                                <label for="sex">Sexo:</label>
                                	<select class="form-control" id="sex">
                              			<option>Masculino</option>
                              			<option>Feminino</option>
                            		</select>
                            </div>
                            <div class="form-group">
                                <label for="sel1">Altura:</label>
                                <div class="input-group input-group-lg">
                                    <input type="text" class="form-control" placeholder="Insira sua altura" aria-describedby="sizing-addon1" name="height">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="sel1">Peso:</label>
                                <div class="input-group input-group-lg">
                                    <input type="text" class="form-control" placeholder="Insira seu peso" aria-describedby="sizing-addon1" name="weight">
                                </div>
                            </div>
                            <button class="btn btn-sm btn-success" type="button" onclick="calcular()">Calcular</a>
                        </fieldset>
                </form>
            </div>
        </div>
    </div>
  </body>
</html>
