<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="aquery.Conn" %>
        <%@ page import="adpojo.Adata" %>
        <%@ page import="java.util.List" %>
    <jsp:useBean id="obj" class="adpojo.Adata" scope="session"/>
    <jsp:setProperty property="*" name="obj"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Airways</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
  <%
  String Username=(String)session.getAttribute("user_email");
 
 
  if(Username==null){
	 response.sendRedirect("login_user.jsp");	   
  }
  %>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">Airways<span>Flight Booking</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	     <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
	         
	          <li class="nav-item"><a href="showflight.jsp" class="nav-link">Available Flight</a></li>
	          <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
	          
	     	<li class="nav-item cta"><a href="#" class="nav-link">Profile</a></li>
            &nbsp;&nbsp;  <li class="nav-item cta"><a href="logout_user.jsp" class="nav-link">Logout</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/flight.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">Set Flight</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Set Flight <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

  
</br></br>

 <script src="https://cdn01.jotfor.ms/static/prototype.forms.js?3.3.39314" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/static/jotform.forms.js?3.3.39314" type="text/javascript"></script>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>
<script type="text/javascript">	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.singleProduct = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;

   JotForm.setConditions([{"action":[{"id":"action_1671712670812","visibility":"Show","isError":false,"field":"23"}],"id":"1671712681674","index":"0","link":"Any","priority":"0","terms":[{"id":"term_1671712670812","field":"22","operator":"equals","value":"International","isError":false}],"type":"field"}]);
	JotForm.init(function(){
	/*INIT-START*/
      setTimeout(function() {
          $('input_7').hint('ex: myname@example.com');
       }, 20);
	/*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"clickTo","qid":"1","text":"Flight Reservation","type":"control_head"},{"name":"submit","qid":"2","text":"Reserve Flight","type":"control_button"},{"name":"passengerName","qid":"3","text":"Passenger Name","type":"control_fullname"},{"name":"dateOf","qid":"4","text":"Date of Birth","type":"control_birthdate"},null,{"name":"contactPerson","qid":"6","text":"Contact Person","type":"control_fullname"},{"name":"email7","qid":"7","text":"E-mail","type":"control_email"},{"name":"phoneNumber8","qid":"8","text":"Phone Number","type":"control_phone"},{"name":"address9","qid":"9","text":"Address","type":"control_address"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"clickTo","qid":"1","text":"Flight Reservation","type":"control_head"},{"name":"submit","qid":"2","text":"Reserve Flight","type":"control_button"},{"name":"passengerName","qid":"3","text":"Passenger Name","type":"control_fullname"},{"name":"dateOf","qid":"4","text":"Date of Birth","type":"control_birthdate"},null,{"name":"contactPerson","qid":"6","text":"Contact Person","type":"control_fullname"},{"name":"email7","qid":"7","text":"E-mail","type":"control_email"},{"name":"phoneNumber8","qid":"8","text":"Phone Number","type":"control_phone"},{"name":"address9","qid":"9","text":"Address","type":"control_address"}]);}, 20); 
</script>
<style type="text/css">@media print{.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.39314&themeRevisionID=5eb3b4ae85bd2e1e2966db96"/>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.39314" />
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.39314" />
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
/*PREFERENCES STYLE*/
    .form-all {
      font-family: Inter, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Inter, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Inter, sans-serif;
    }
    .form-header-group {
      font-family: Inter, sans-serif;
    }
    .form-label {
      font-family: Inter, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: block;
    float: none;
    text-align: left;
    width: 100%;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      max-width: 752px;
      width: 100%;
    }
  
    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
      width: 230px;
    }
  
    .form-all {
      font-size: 16px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 16px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 16px
    }
  
    .supernova .form-all, .form-all {
      background-color: #fff;
    }
  
    .form-all {
      color: #2C3345;
    }
    .form-header-group .form-header {
      color: #2C3345;
    }
    .form-header-group .form-subHeader {
      color: #2C3345;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label,
    span.FITB .qb-checkbox-label,
    span.FITB .qb-radiobox-label,
    span.FITB .form-radio label,
    span.FITB .form-checkbox label,
    [data-blotid][data-type=checkbox] [data-labelid],
    [data-blotid][data-type=radiobox] [data-labelid],
    span.FITB-inptCont[data-type=checkbox] label,
    span.FITB-inptCont[data-type=radiobox] label {
      color: #2C3345;
    }
    .form-sub-label {
      color: #464d5f;
    }
  
    .supernova {
      background-color: #cee3fd;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-dropdown,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: #fff;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/.form-header-group.header-small,
.form-header-group.hasImage.header-small {
  padding-top: 0;
  padding-right: 0;
  padding-left: 0;
  padding-bottom: 22px;
  margin:0 -38px;
}

.form-section div.form-header-group.header-small {
  padding-top: 0;
  padding-right: 0;
  padding-left: 0;
  border: 0;
}

.form-header-group.header-small h3 {

    text-transform : uppercase;
    font-size : 32px !important;
    font-weight : 300;
    padding-left: 52px;
}

.form-header-group.header-small .form-subHeader {
    color : #376abd;
    font-size : 16px !important;
    font-weight: 300;
    padding-left: 52px;
}

.form-header-group.header-small {
  overflow: hidden;
  border-radius: 4px 4px 0 0;
}

.header-logo img {
  vertical-align: top;
  width: 100%
}

.form-all,
#stage .formPage-stage.form-all,  
.form-section.page-section {
    border-radius : 4px;
}
.form-all {
    box-shadow : 0 0 32px rgba(42, 42, 42, 0.16);
}

@media screen and (max-width: 768px) {
  .form-header-group.header-small,
  .form-header-group.hasImage.header-small {
    margin: 0 -14px;
  }
}


 @media screen and (max-width: 480px) {
  .form-header-group.header-small,
  .form-header-group.hasImage.header-small {
    margin: 0;
  }
}

    /* Injected CSS Code */
</style>

<form class="jotform-form" action="flightdet.jsp"  name="form_230460355640449" id="230460355640449" accept-charset="utf-8" autocomplete="on"><input type="hidden" name="formID" value="230460355640449" /><input type="hidden" id="JWTContainer" value="" /><input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <style>
      .form-all:before
      {
        background: none;
      }
    </style>
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div style="display:table;width:100%">
          <div class="form-header-group hasImage header-small" data-imagealign="Top">
            <div class="header-logo"><img src="https://www.jotform.com/uploads/ugurg/form_files/plane5.6388d94a038716.80328162.png" alt="Flight Reservation" width="340" class="header-logo-top" /></div>
            <div class="header-text httal htvam">
              <h3 id="header_1" class="form-header" data-component="header">Flight Reservation</h3>
              <div id="subHeader_1" class="form-subHeader">Please make sure that you fill in the name which is in your passport.</div>
            </div>
          </div>
        </div>
      </li>
       
       <%
       int id=Integer.parseInt(request.getParameter("id"));
      
       Adata d=Conn.Selectflight(id);
       %>
      
           <div>        
       <label class="form-label form-label-top" > Airline Name:</label><%=d.getFlight_name() %>
       <label class="form-label form-label-top form-label-extended form-label-auto"> Departed from:</label> <%=d.getFlight_city()%>     
       <label class="form-label form-label-top form-label-extended form-label-auto"> Destination:</label> <%=d.getFlight_to_city()%>
        <label class="form-label form-label-top form-label-extended form-label-auto"> Boarding Airport:</label><%=d.getFlight_airport() %>
         <label class="form-label form-label-top form-label-extended form-label-auto"> Travel Duration:</label><%=d.getFlight_duration()%> 
         <label class="form-label form-label-top form-label-extended form-label-auto"> Travel Price:</label> <%=d.getFlight_tk_price()%>>Rs    
     </div>
     <input type="hidden" value="<%=d.getFlight_name()%>"name="fname"/>
     <input type="hidden" value="<%=d.getFlight_city()%>" name="fcity"/>
     <input type="hidden" value="<%=d.getFlight_to_city()%>" name="ftocity" />
     <input type="hidden" value="<%=d.getFlight_airport() %>" name="flightarip"/>
     <input type="hidden" value="<%=d.getFlight_duration()%>" name="fduration"/>
     <input type="hidden" value="<%=d.getFlight_tk_price()%>" name="fprice"/>
    
<li class="form-line" data-type="control_email" id="id_7"><label class="form-label form-label-top form-label-auto" id="label_7" for="input_7"> Passenger Full Name </label>
      <div class="form-address-line-wrapper jsTest-address-line-wrapperField"><span class="form-address-line form-address-street-line jsTest-address-lineField"><span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_9_addr_line2" name="pfname" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_9 off" value="" data-component="address_line_2" aria-labelledby="label_9 sublabel_9_addr_line2" />
      
        </div>
      </li>
      
      <li class="form-line" data-type="control_email" id="id_7"><label class="form-label form-label-top form-label-auto" id="label_7" for="input_7"> E-mail </label>
        <div id="cid_7" class="form-input-wide" data-layout="half"> <input type="email" id="input_7" name="pemail" class="form-textbox validate[Email]" data-defaultvalue="" style="width:43px" size="43" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_7" /> </div>
      </li>
      <li class="form-line" data-type="control_address" id="id_9"><label class="form-label form-label-top form-label-auto" id="label_9" for="input_9undefined"> Address </label>
        <div id="cid_9" class="form-input-wide" data-layout="full">
          <div summary="" class="form-address-table jsTest-addressField">
          
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField"><span class="form-address-line form-address-street-line jsTest-address-lineField"><span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_9_addr_line2" name="paddres" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_9 off" value="" data-component="address_line_2" aria-labelledby="label_9 sublabel_9_addr_line2" /><label class="form-sub-label" for="input_9_addr_line2" id="sublabel_9_addr_line2" style="min-height:13px" aria-hidden="false">Street Addresss</label></span></span></div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField"><span class="form-address-line form-address-city-line jsTest-address-lineField "><span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_9_city" name="pcity" class="form-textbox form-address-city" data-defaultvalue="" autoComplete="section-input_9 address-level2" value="" data-component="city" aria-labelledby="label_9 sublabel_9_city" /><label class="form-sub-label" for="input_9_city" id="sublabel_9_city" style="min-height:13px" aria-hidden="false">City</label></span></span><span class="form-address-line form-address-state-line jsTest-address-lineField "><span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_9_state" name="q9_address9[state]" class="form-textbox form-address-state" data-defaultvalue="" autoComplete="section-input_9 address-level1" value="" data-component="state" aria-labelledby="label_9 sublabel_9_state" /><label class="form-sub-label" for="input_9_state" id="sublabel_9_state" style="min-height:13px" aria-hidden="false">State / Province</label></span></span></div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField"><span class="form-address-line form-address-zip-line jsTest-address-lineField "><span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_9_postal" name="q9_address9[postal]" class="form-textbox form-address-postal" data-defaultvalue="" autoComplete="section-input_9 postal-code" value="" data-component="zip" aria-labelledby="label_9 sublabel_9_postal" /><label class="form-sub-label" for="input_9_postal" id="sublabel_9_postal" style="min-height:13px" aria-hidden="false">Postal / Zip Code</label></span></span><span class="form-address-line form-address-country-line jsTest-address-lineField "><span class="form-sub-label-container" style="vertical-align:top"><select class="form-dropdown form-address-country" name="pcontry" id="input_9_country" data-component="country" required="" aria-labelledby="label_9 sublabel_9_country" autoComplete="section-input_9 country">
                    <option value="">Please Select</option>
                    <option value="United States">United States</option>
                    <option value="Afghanistan">Afghanistan</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Andorra">Andorra</option>
                    <option value="Angola">Angola</option>
                    <option value="Anguilla">Anguilla</option>
                    <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                    <option value="Argentina">Argentina</option>
                    <option value="Armenia">Armenia</option>
                    <option value="Aruba">Aruba</option>
                    <option value="Australia">Australia</option>
                    <option value="Austria">Austria</option>
                    <option value="Azerbaijan">Azerbaijan</option>
                    <option value="The Bahamas">The Bahamas</option>
                    <option value="Bahrain">Bahrain</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="Barbados">Barbados</option>
                    <option value="Belarus">Belarus</option>
                    <option value="Belgium">Belgium</option>
                    <option value="Belize">Belize</option>
                    <option value="Benin">Benin</option>
                    <option value="Bermuda">Bermuda</option>
                    <option value="Bhutan">Bhutan</option>
                    <option value="Bolivia">Bolivia</option>
                    <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                    <option value="Botswana">Botswana</option>
                    <option value="Brazil">Brazil</option>
                    <option value="Brunei">Brunei</option>
                    <option value="Bulgaria">Bulgaria</option>
                    <option value="Burkina Faso">Burkina Faso</option>
                    <option value="Burundi">Burundi</option>
                    <option value="Cambodia">Cambodia</option>
                    <option value="Cameroon">Cameroon</option>
                    <option value="Canada">Canada</option>
                    <option value="Cape Verde">Cape Verde</option>
                    <option value="Cayman Islands">Cayman Islands</option>
                    <option value="Central African Republic">Central African Republic</option>
                    <option value="Chad">Chad</option>
                    <option value="Chile">Chile</option>
                    <option value="China">China</option>
                    <option value="Christmas Island">Christmas Island</option>
                    <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                    <option value="Colombia">Colombia</option>
                    <option value="Comoros">Comoros</option>
                    <option value="Congo">Congo</option>
                    <option value="Cook Islands">Cook Islands</option>
                    <option value="Costa Rica">Costa Rica</option>
                    <option value="Cote d&#x27;Ivoire">Cote d&#x27;Ivoire</option>
                    <option value="Croatia">Croatia</option>
                    <option value="Cuba">Cuba</option>
                    <option value="Curaçao">Curaçao</option>
                    <option value="Cyprus">Cyprus</option>
                    <option value="Czech Republic">Czech Republic</option>
                    <option value="Democratic Republic of the Congo">Democratic Republic of the Congo</option>
                    <option value="Denmark">Denmark</option>
                    <option value="Djibouti">Djibouti</option>
                    <option value="Dominica">Dominica</option>
                    <option value="Dominican Republic">Dominican Republic</option>
                    <option value="Ecuador">Ecuador</option>
                    <option value="Egypt">Egypt</option>
                    <option value="El Salvador">El Salvador</option>
                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                    <option value="Eritrea">Eritrea</option>
                    <option value="Estonia">Estonia</option>
                    <option value="Ethiopia">Ethiopia</option>
                    <option value="Falkland Islands">Falkland Islands</option>
                    <option value="Faroe Islands">Faroe Islands</option>
                    <option value="Fiji">Fiji</option>
                    <option value="Finland">Finland</option>
                    <option value="France">France</option>
                    <option value="French Polynesia">French Polynesia</option>
                    <option value="Gabon">Gabon</option>
                    <option value="The Gambia">The Gambia</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Germany">Germany</option>
                    <option value="Ghana">Ghana</option>
                    <option value="Gibraltar">Gibraltar</option>
                    <option value="Greece">Greece</option>
                    <option value="Greenland">Greenland</option>
                    <option value="Grenada">Grenada</option>
                    <option value="Guadeloupe">Guadeloupe</option>
                    <option value="Guam">Guam</option>
                    <option value="Guatemala">Guatemala</option>
                    <option value="Guernsey">Guernsey</option>
                    <option value="Guinea">Guinea</option>
                    <option value="Guinea-Bissau">Guinea-Bissau</option>
                    <option value="Guyana">Guyana</option>
                    <option value="Haiti">Haiti</option>
                    <option value="Honduras">Honduras</option>
                    <option value="Hong Kong">Hong Kong</option>
                    <option value="Hungary">Hungary</option>
                    <option value="Iceland">Iceland</option>
                    <option value="India">India</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Iran">Iran</option>
                    <option value="Iraq">Iraq</option>
                    <option value="Ireland">Ireland</option>
                    <option value="Israel">Israel</option>
                    <option value="Italy">Italy</option>
                    <option value="Jamaica">Jamaica</option>
                    <option value="Japan">Japan</option>
                    <option value="Jersey">Jersey</option>
                    <option value="Jordan">Jordan</option>
                    <option value="Kazakhstan">Kazakhstan</option>
                    <option value="Kenya">Kenya</option>
                    <option value="Kiribati">Kiribati</option>
                    <option value="North Korea">North Korea</option>
                    <option value="South Korea">South Korea</option>
                    <option value="Kosovo">Kosovo</option>
                    <option value="Kuwait">Kuwait</option>
                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                    <option value="Laos">Laos</option>
                    <option value="Latvia">Latvia</option>
                    <option value="Lebanon">Lebanon</option>
                    <option value="Lesotho">Lesotho</option>
                    <option value="Liberia">Liberia</option>
                    <option value="Libya">Libya</option>
                    <option value="Liechtenstein">Liechtenstein</option>
                    <option value="Lithuania">Lithuania</option>
                    <option value="Luxembourg">Luxembourg</option>
                    <option value="Macau">Macau</option>
                    <option value="Macedonia">Macedonia</option>
                    <option value="Madagascar">Madagascar</option>
                    <option value="Malawi">Malawi</option>
                    <option value="Malaysia">Malaysia</option>
                    <option value="Maldives">Maldives</option>
                    <option value="Mali">Mali</option>
                    <option value="Malta">Malta</option>
                    <option value="Marshall Islands">Marshall Islands</option>
                    <option value="Martinique">Martinique</option>
                    <option value="Mauritania">Mauritania</option>
                    <option value="Mauritius">Mauritius</option>
                    <option value="Mayotte">Mayotte</option>
                    <option value="Mexico">Mexico</option>
                    <option value="Micronesia">Micronesia</option>
                    <option value="Moldova">Moldova</option>
                    <option value="Monaco">Monaco</option>
                    <option value="Mongolia">Mongolia</option>
                    <option value="Montenegro">Montenegro</option>
                    <option value="Montserrat">Montserrat</option>
                    <option value="Morocco">Morocco</option>
                    <option value="Mozambique">Mozambique</option>
                    <option value="Myanmar">Myanmar</option>
                    <option value="Nagorno-Karabakh">Nagorno-Karabakh</option>
                    <option value="Namibia">Namibia</option>
                    <option value="Nauru">Nauru</option>
                    <option value="Nepal">Nepal</option>
                    <option value="Netherlands">Netherlands</option>
                    <option value="Netherlands Antilles">Netherlands Antilles</option>
                    <option value="New Caledonia">New Caledonia</option>
                    <option value="New Zealand">New Zealand</option>
                    <option value="Nicaragua">Nicaragua</option>
                    <option value="Niger">Niger</option>
                    <option value="Nigeria">Nigeria</option>
                    <option value="Niue">Niue</option>
                    <option value="Norfolk Island">Norfolk Island</option>
                    <option value="Turkish Republic of Northern Cyprus">Turkish Republic of Northern Cyprus</option>
                    <option value="Northern Mariana">Northern Mariana</option>
                    <option value="Norway">Norway</option>
                    <option value="Oman">Oman</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Palau">Palau</option>
                    <option value="Palestine">Palestine</option>
                    <option value="Panama">Panama</option>
                    <option value="Papua New Guinea">Papua New Guinea</option>
                    <option value="Paraguay">Paraguay</option>
                    <option value="Peru">Peru</option>
                    <option value="Philippines">Philippines</option>
                    <option value="Pitcairn Islands">Pitcairn Islands</option>
                    <option value="Poland">Poland</option>
                    <option value="Portugal">Portugal</option>
                    <option value="Puerto Rico">Puerto Rico</option>
                    <option value="Qatar">Qatar</option>
                    <option value="Republic of the Congo">Republic of the Congo</option>
                    <option value="Romania">Romania</option>
                    <option value="Russia">Russia</option>
                    <option value="Rwanda">Rwanda</option>
                    <option value="Saint Barthelemy">Saint Barthelemy</option>
                    <option value="Saint Helena">Saint Helena</option>
                    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                    <option value="Saint Lucia">Saint Lucia</option>
                    <option value="Saint Martin">Saint Martin</option>
                    <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                    <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                    <option value="Samoa">Samoa</option>
                    <option value="San Marino">San Marino</option>
                    <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                    <option value="Saudi Arabia">Saudi Arabia</option>
                    <option value="Senegal">Senegal</option>
                    <option value="Serbia">Serbia</option>
                    <option value="Seychelles">Seychelles</option>
                    <option value="Sierra Leone">Sierra Leone</option>
                    <option value="Singapore">Singapore</option>
                    <option value="Slovakia">Slovakia</option>
                    <option value="Slovenia">Slovenia</option>
                    <option value="Solomon Islands">Solomon Islands</option>
                    <option value="Somalia">Somalia</option>
                    <option value="Somaliland">Somaliland</option>
                    <option value="South Africa">South Africa</option>
                    <option value="South Ossetia">South Ossetia</option>
                    <option value="South Sudan">South Sudan</option>
                    <option value="Spain">Spain</option>
                    <option value="Sri Lanka">Sri Lanka</option>
                    <option value="Sudan">Sudan</option>
                    <option value="Suriname">Suriname</option>
                    <option value="Svalbard">Svalbard</option>
                    <option value="eSwatini">eSwatini</option>
                    <option value="Sweden">Sweden</option>
                    <option value="Switzerland">Switzerland</option>
                    <option value="Syria">Syria</option>
                    <option value="Taiwan">Taiwan</option>
                    <option value="Tajikistan">Tajikistan</option>
                    <option value="Tanzania">Tanzania</option>
                    <option value="Thailand">Thailand</option>
                    <option value="Timor-Leste">Timor-Leste</option>
                    <option value="Togo">Togo</option>
                    <option value="Tokelau">Tokelau</option>
                    <option value="Tonga">Tonga</option>
                    <option value="Transnistria Pridnestrovie">Transnistria Pridnestrovie</option>
                    <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                    <option value="Tristan da Cunha">Tristan da Cunha</option>
                    <option value="Tunisia">Tunisia</option>
                    <option value="Turkey">Turkey</option>
                    <option value="Turkmenistan">Turkmenistan</option>
                    <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                    <option value="Tuvalu">Tuvalu</option>
                    <option value="Uganda">Uganda</option>
                    <option value="Ukraine">Ukraine</option>
                    <option value="United Arab Emirates">United Arab Emirates</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="Uruguay">Uruguay</option>
                    <option value="Uzbekistan">Uzbekistan</option>
                    <option value="Vanuatu">Vanuatu</option>
                    <option value="Vatican City">Vatican City</option>
                    <option value="Venezuela">Venezuela</option>
                    <option value="Vietnam">Vietnam</option>
                    <option value="British Virgin Islands">British Virgin Islands</option>
                    <option value="Isle of Man">Isle of Man</option>
                    <option value="US Virgin Islands">US Virgin Islands</option>
                    <option value="Wallis and Futuna">Wallis and Futuna</option>
                    <option value="Western Sahara">Western Sahara</option>
                    <option value="Yemen">Yemen</option>
                    <option value="Zambia">Zambia</option>
                    <option value="Zimbabwe">Zimbabwe</option>
                    <option value="other">Other</option>
                  </select><label class="form-sub-label" for="input_9_country" id="sublabel_9_country" style="min-height:13px" aria-hidden="false">Country</label></span></span></div>
          </div>
        </div>
      </li>
      
      <li class="form-line" data-type="control_phone" id="id_8"><label class="form-label form-label-top form-label-auto" id="label_8" for="input_8_area"> Phone Number </label>
        <div id="cid_8" class="form-input-wide" data-layout="half">
          <div data-wrapper-react="true"><span class="form-sub-label-container" style="vertical-align:top" data-input-type="areaCode"><input type="tel" id="input_8_area" name="q8_phoneNumber8[area]" class="form-textbox" data-defaultvalue="" autoComplete="section-input_8 tel-area-code" value="" data-component="areaCode" aria-labelledby="label_8 sublabel_8_area" /><span class="phone-separate" aria-hidden="true"> -</span><label class="form-sub-label" for="input_8_area" id="sublabel_8_area" style="min-height:13px" aria-hidden="false">Area Code</label></span><span class="form-sub-label-container" style="vertical-align:top" data-input-type="phone"><input type="tel" id="input_8_phone" name="q8_phoneNumber8[phone]" class="form-textbox" data-defaultvalue="" autoComplete="section-input_8 tel-local" value="" data-component="phone" aria-labelledby="label_8 sublabel_8_phone" /><label class="form-sub-label" for="input_8_phone" id="sublabel_8_phone" style="min-height:13px" aria-hidden="false">Phone Number</label></span></div>
        </div>

      </li>
      <li class="form-line" data-type="control_birthdate" id="id_4"><label class="form-label form-label-top form-label-auto" id="label_4" for="input_4"> Date of Birth </label>
<input type="text" class="form-textbox" name="dob"/>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide" data-layout="full">
          <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField"><a id="input_2" type="submit"  href="showflight.jsp" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Back</a><button id="input_2" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Reserve Flight</button></div>
        </div>
      </li>
      <li style="display:none">Should be Empty: <input type="text" name="website" value="" /></li>
    </ul>
  </div>
  
  

</form><script type="text/javascript">JotForm.ownerView=true;</script>
</br></br>
    <footer class="ftco-footer bg-bottom" style="background-image: url(images/footer-bg.jpg);">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vacation</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Infromation</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Online Enquiry</a></li>
                <li><a href="#" class="py-2 d-block">General Enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                <li><a href="#" class="py-2 d-block">Refund Policy</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li><a href="#" class="py-2 d-block">Hotel and Restaurant</a></li>
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Nature</a></li>
                <li><a href="#" class="py-2 d-block">Camping</a></li>
                <li><a href="#" class="py-2 d-block">Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">RAJ BHASME</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>