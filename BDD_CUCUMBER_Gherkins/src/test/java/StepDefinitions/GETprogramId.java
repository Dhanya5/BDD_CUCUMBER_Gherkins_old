package StepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class GETprogramId {
	@Given("User creates GET request with existing programId")
	public void user_creates_get_request_with_existing_program_id() {
	    
	}

	@Then("User receives {int} OK with required \\{\\{programId}}, programName,programDescription,online fields was displayed")
	public void user_receives_ok_with_required_program_name_program_description_online_fields_was_displayed(Integer int1) {
	    
	}

	@Given("User creates GET request with non existing \\{\\{ProgramID}}")
	public void user_creates_get_request_with_non_existing() {
	   
	}

	@Then("User receives {int} OK with response body as null")
	public void user_receives_ok_with_response_body_as_null(Integer int1) {
	   
	}

	@Given("User creates GET request with programId as {int}")
	public void user_creates_get_request_with_program_id_as(Integer int1) {
	    
	}

	@Given("User creates GET request with programId as alphanumeric")
	public void user_creates_get_request_with_program_id_as_alphanumeric() {
	  
	}

	@Then("User receives {int} Bad request")
	public void user_receives_bad_request(Integer int1) {
	    
	}



}
