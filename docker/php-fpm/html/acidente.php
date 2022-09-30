<?php
// O controlador de acidentes.
echo $_POST['ocorrencia'] . '<br>';
echo $_POST['data'] . '<br>';

$i = 0;

while (isset($_POST['nomeCompleto_' . $i])) {
  echo $_POST['nomeCompleto_' . $i] . ' (';
  echo $_POST['cpf_' . $i] . ')<br>';
  $i++;
}