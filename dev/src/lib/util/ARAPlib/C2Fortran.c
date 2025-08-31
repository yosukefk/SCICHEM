//*******************************************************************************
//$RCSfile$
//$Revision$
//$Date$
//*******************************************************************************
#include "C2Fortran.h"

//=======Duplicate function for different fortran compilers======
void value_reference_(in,out)
int in, *out;
{
	*out = in;
	return;
}

void VALUE_REFERENCE(in,out)
int in, *out;
{
	value_reference_(in,out);
	return;
}
//=======Duplicate function for different fortran compilers======
void address_integer_(in,out)
int **in, *out;
{
	*out = **in;
	return;
}

void ADDRESS_INTEGER(in,out)
int **in, *out;
{
	address_integer_(in,out);
	return;
}
//===============================================================
void ADDRESS_REAL(in,out)
float **in, *out;
{
	*out = **in;
	return;
}
//=======Duplicate function for different fortran compilers======
void address_message_(in,out)
struct messageT **in, *out;
{
	*out = **in;
	return;
}

void ADDRESS_MESSAGE(in,out)
struct messageT **in, *out;
{
	address_message_(in,out);
	return;
}
//===============================================================

void ADDRESS_RELEASE(in,out)
struct releaseT **in, *out;
{
	*out = **in;
	return;
}

//=======Duplicate function for different fortran compilers======
void address_update_(in,out)
struct updateRelT **in, *out;
{
	*out = **in;
	return;
}

void ADDRESS_UPDATE(in,out)
struct updateRelT **in, *out;
{
	address_update_(in,out);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_updatemc_(in, out)
struct updateRelMCT **in, *out;
{
  *out = **in;
  return;
}

void ADDRESS_UPDATEMC(in, out)
struct updateRelMCT **in, *out;
{
  address_update_(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void address_effect_(in,out)
struct computeEffT **in, *out;
{
	*out = **in;
	return;
}

void ADDRESS_EFFECT(in,out)
struct computeEffT **in, *out;
{
	address_effect_(in,out);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_promptinitin_(in,out)
struct casualtyPromptInitInT **in,*out;
{
	*out = **in;
	return;
}

void ADDRESS_PROMPTINITIN(in,out)
struct casualtyPromptInitInT **in,*out;
{
	address_promptinitin_(in,out);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_promptinitout(in, out)
struct casualtyPromptInitOutT **in, *out;
{
  *out = **in;
  return;
}

void ADDRESS_PROMPTINITOUT(in, out)
struct casualtyPromptInitOutT **in,*out;
{
  address_promptinitout(in, out);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_prompt2Dinitout(in, out)
struct casualtyPrompt2DInitOutT **in, *out;
{
  *out = **in;
  return;
}

void ADDRESS_PROMPT2DINITOUT(in, out)
struct casualtyPrompt2DInitOutT **in, *out;
{
  address_prompt2Dinitout(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void address_promptcompin_(in, out)
struct casualtyPromptCompInT **in,*out;
{
	*out = **in;
	return;
}

void ADDRESS_PROMPTCOMPIN(in,out)
struct casualtyPromptCompInT **in,*out;
{
	address_promptcompin_(in,out);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_promptcompout(in, out)
struct casualtyPromptCompOutT **in, *out;
{
  *out = **in;
  return;
}

void ADDRESS_PROMPTCOMPOUT(in, out)
struct casualtyPromptCompOutT **in,*out;
{
  address_promptcompout(in, out);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_prompt2Dcompout(in, out)
struct casualtyPrompt2DCompOutT **in, *out;
{
  *out = **in;
  return;
}

void ADDRESS_PROMPT2DCOMPOUT(in, out)
struct casualtyPrompt2DCompOutT **in, *out;
{
  address_prompt2Dcompout(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void address_promptcompoutarray(in, out, n)
int *n;
struct casualtyPromptCompOutT **in, *out;
{
  int i;
  for (i = 0; i<*n; i++)
    *(out + i) = *(*in + i);
  return;
}

void ADDRESS_PROMPTCOMPOUTARRAY(in, out, n)
int *n;
struct casualtyPromptCompOutT **in,*out;
{
  address_promptcompoutarray(in, out, n);
	return;
}

//=======Duplicate function for different fortran compilers======
void address_prompt2Dcompoutarray(in, out, n)
int *n;
struct casualtyPrompt2DCompOutT **in, *out;
{
  int i;
  for (i = 0; i<*n; i++)
    *(out + i) = *(*in + i);
  return;
}

void ADDRESS_PROMPT2DCOMPOUTARRAY(in, out, n)
int *n;
struct casualtyPrompt2DCompOutT **in, *out;
{
  address_prompt2Dcompoutarray(in, out, n);
  return;
}

void ADDRESS_REALARRAY(in, out, n)
int *n;
float **in,*out;
{
	int i;
	for (i=0;i<*n;i++)
		*(out+i) = *(*in+i);
	return;
}

//====Special call for Fortran strings. NB last argument is implicit string length added by compiler
void address_string_(in,out,n)
int n;
char **in,*out;
{
	int i;
	for (i=0;i<n;i++) {
		*(out+i) = *(*in+i);
		if (*(out+i)==0) return;
	}
	return;
}

void ADDRESS_STRING(in,out,n)
int n;
char **in,*out;
{
	address_string_(in,out,n);
	return;
}
//=======Duplicate function for different fortran compilers======
void address_integerarray_(in,out,n)
int *n;
int **in,*out;
{
	int i;
	for (i=0;i<*n;i++)
		*(out+i) = *(*in+i);
	return;
}

void ADDRESS_INTEGERARRAY(in,out,n)
int *n;
int **in,*out;
{
	address_integerarray_(in,out,n);
	return;
}
//======================================================
void INTEGER_ADDRESS(in,out)
int *in, **out;
{
	**out = *in;
	return;
}

void REAL_ADDRESS(in,out)
float *in, **out;
{
	**out = *in;
	return;
}

void MESSAGE_ADDRESS(in,out)
struct messageT *in, **out;
{
	**out = *in;
	return;
}

void RELEASE_ADDRESS(in,out)
struct releaseT *in, **out;
{
	**out = *in;
	return;
}

//=======Duplicate function for different fortran compilers======
void update_address_(in,out)
struct updateRelT *in, **out;
{
	**out = *in;
	return;
}

void UPDATE_ADDRESS(in,out)
struct updateRelT *in, **out;
{
	update_address_(in,out);
	return;
}

//=======Duplicate function for different fortran compilers======
void updatemc_address_(in, out)
struct updateRelMCT *in, **out;
{
  **out = *in;
  return;
}

void UPDATEMC_ADDRESS(in, out)
struct updateRelMCT *in, **out;
{
  updatemc_address_(in, out);
  return;
}

//===============================================================
void EFFECT_ADDRESS(in,out)
struct computeEffT *in, **out;
{
	**out = *in;
	return;
}

//=======Duplicate function for different fortran compilers======
void promptinitin_address(in, out)
struct casualtyPromptInitInT *in, **out;
{
	**out = *in;
	return;
}

void PROMPTINITIN_ADDRESS(in, out)
struct casualtyPromptInitInT *in, **out;
{
  promptinitin_address(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void promptinitout_address_(in,out)
struct casualtyPromptInitOutT *in, **out;
{
	**out = *in;
	return;
}

void PROMPTINITOUT_ADDRESS(in,out)
struct casualtyPromptInitOutT *in, **out;
{
	promptinitout_address_(in,out);
	return;
}

//=======Duplicate function for different fortran compilers======
void prompt2dinitout_address_(in, out)
struct casualtyPrompt2DInitOutT *in, **out;
{
  **out = *in;
  return;
}

void PROMPT2DINITOUT_ADDRESS(in, out)
struct casualtyPrompt2DInitOutT *in, **out;
{
  prompt2dinitout_address_(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void promptcompin_address(in, out)
struct casualtyPromptCompInT *in, **out;
{
	**out = *in;
	return;
}

void PROMPTCOMPIN_ADDRESS(in, out)
struct casualtyPromptCompInT *in, **out;
{
  promptcompin_address(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void promptcompout_address(in, out)
struct casualtyPromptCompOutT *in, **out;
{
  **out = *in;
  return;
}

void PROMPTCOMPOUT_ADDRESS(in, out)
struct casualtyPromptCompOutT *in, **out;
{
  promptcompout_address(in, out);
	return;
}

//=======Duplicate function for different fortran compilers======
void prompt2Dcompout_address(in, out)
struct casualtyPrompt2DCompOutT *in, **out;
{
  **out = *in;
  return;
}

void PROMPT2DCOMPOUT_ADDRESS(in, out)
struct casualtyPrompt2DCompOutT *in, **out;
{
  prompt2Dcompout_address(in, out);
  return;
}

//=======Duplicate function for different fortran compilers======
void promptcompoutarray_address_(in,out,n)
int *n;
struct casualtyPromptCompOutT *in, **out;
{
	int i;
	for (i=0;i<*n;i++)
		*(*out+i) = *(in+i);
	return;
}

void PROMPTCOMPOUTARRAY_ADDRESS(in,out,n)
int *n;
struct casualtyPromptCompOutT *in, **out;
{
	promptcompoutarray_address_(in,out,n);
	return;
}

//=======Duplicate function for different fortran compilers======
void prompt2dcompoutarray_address_(in, out, n)
int *n;
struct casualtyPrompt2DCompOutT *in, **out;
{
  int i;
  for (i = 0; i<*n; i++)
    *(*out + i) = *(in + i);
  return;
}

void PROMPT2DCOMPOUTARRAY_ADDRESS(in, out, n)
int *n;
struct casualtyPrompt2DCompOutT *in, **out;
{
  prompt2dcompoutarray_address_(in, out, n);
  return;
}

//===============================================================

void REALARRAY_ADDRESS(in,out,n)
int *n;
float *in,**out;
{
	int i;
	for (i=0;i<*n;i++)
		*(*out+i) = *(in+i);
	return;
}

//=======Duplicate function for different fortran compilers======
void integerarray_address_(in,out,n)
int *n;
int *in,**out;
{
	int i;
	for (i=0;i<*n;i++)
		*(*out+i) = *(in+i);
	return;
}

void INTEGERARRAY_ADDRESS(in,out,n)
int *n;
int *in,**out;
{
	integerarray_address_(in,out,n);
	return;
}
//=======Duplicate function for different fortran compilers======
void *ADDRESSOF(item)
void *item;
{
	return item;
}

void *addressof_(item)
void *item;
{
	return item;
}
//===============================================================
