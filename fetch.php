  <?php

      /* Initial Source: https://components.pmi.org/UI/HelpDocs/HowToUseCS.pdf page 39
       * Component Systems User Guide
       * 2007-027.13-11 January 2018
       * © Project Management Institute, Inc. All rights reserved.
       */

      $auth = include('auth.php');

      /* Sample auth.php:

        <?php

        return (object) array(
            'username' => 'put-username-here',
            'password' => 'put-password-here'
        );

       */

      $endpoint_url = 'https://svc.pmi.org/DEPServices/services/DEP.svc';
      $method_name = 'GetMemberExtractReport';
      $service_name = 'DEPService';
      $username = $auth->username;
      $password = $auth->password;
      $method_namespace = 'http://svc.pmi.org/2011/01/15';
      $auth_namespace = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd';

      $token = new stdClass;
      $token->Username = new SOAPVar($username, XSD_STRING, null, null, null, $auth_namespace);
      $token->Password = new SOAPVar($password, XSD_STRING, null, null, null, $auth_namespace);
      $wsec = new stdClass;
      $wsec->UsernameToken = new SoapVar($token, SOAP_ENC_OBJECT, null, null, null, $auth_namespace);
      $auth_header = new SOAPHeader($auth_namespace, 'Security', $wsec, true);

      $arrOptions = array(
          'soap_version' => SOAP_1_1,
          'trace' => 1, // DEBUG
          'exceptions' => true, // DEBUG
          'cache_wsdl' => WSDL_CACHE_NONE,
          'features' => SOAP_SINGLE_ELEMENT_ARRAYS,
          'location' => $endpoint_url,
          'uri' => $method_namespace
      );
      $soapClient = new SoapClient(NULL, $arrOptions);
      $soapClient->__setSoapHeaders(array($auth_header));

      try {
          $arguments = array( /* empty */ );
          $action = array('soapaction' => "$method_namespace/$service_name/$method_name",
                          'uri' => $method_namespace);
          $result = $soapClient->__soapCall($method_name, $arguments, $action);

          // Nothing fancy - just print it out
          file_put_contents('output.csv', $result->ExtractFile);
      }
      catch (SoapFault $fault)
      {
          // Print out exception
          print("{$fault->faultcode} : {$fault->faultstring}");
      }

      ?>