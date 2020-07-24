# ForProfitOpAgreement

This is the operating agreement (in combination with items found in CommonBoilerplate)
used by :

Suborbital Systems Development Co LLC
RackRental Operating Company LLC
(and a basis for) Redwood 

(you can find redwood agreement in its own repo )

No warranties, express or implied. It's worked well for us, YMWV!!!

Also no build pipeline is provided. Our private repos have a build pipeline (bash script with 
cat and pandoc, nothing fancy). 

We include bits from this repo and from the CommoBoilerplate repo. 

Here's the pipeline (as of 07/24/2020 at 18:33 CST). It should get you started. 
Don't open issues re build, they will be closed and your LDAP account disabled 

#!/bin/bash 

OUTPUT_FILE="Contract-SuboLLC.pdf"
MD_FILE_CONCAT="SuboLLC.md"

rm $MD_FILE_CONCAT
rm $OUTPUT_FILE

#Company specfic bits
cat title.md >> $MD_FILE_CONCAT
cat CompanyNameAndPurpose.md >> $MD_FILE_CONCAT
cat grantToMembers.md >>  $MD_FILE_CONCAT

#Common/base bits below...
BASEBITS="/home/charles/code/TSG"

cat $BASEBITS/CommonBoilerplate/defs.md >> $MD_FILE_CONCAT
cat $BASEBITS/CommonBoilerplate/boilerplate.md >>  $MD_FILE_CONCAT
cat $BASEBITS/CommonBoilerplate/remove.md >>  $MD_FILE_CONCAT
cat $BASEBITS/CommonBoilerplate/profInterest.md >> $MD_FILE_CONCAT
cat $BASEBITS/CommonBoilerplate/nda.md >>  $MD_FILE_CONCAT
cat $BASEBITS/CommonBoilerplate/ip-assign.md >>  $MD_FILE_CONCAT
cat /home/charles/code/TSG/ForProfitOpAgreement/TxLLC-ForProfit-MultiMember-ProfitInterestGrant-OpAgreement.md >> $MD_FILE_CONCAT

pandoc \
	< $MD_FILE_CONCAT \
	--number-sections \
	--toc \
	--from=markdown \
	--to=pdf \
	--output=$OUTPUT_FILE


We are already giving away a very expensive document for free, figure out how to build it yourself :)

maintaining a genericized build pipeline isn't feasible with our limited time.

Pull requests welcome
