class FormValidators {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira o nome';
    }
    return null;
  }

  static String? validateCpf(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira o CPF';
    }
    return null;
  }

  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira a idade';
    }
    return null;
  }

  static String? validateSexo(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, selecione o sexo';
    }
    return null;
  }

  static String? validateDemanda(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira a demanda';
    }
    return null;
  }
}