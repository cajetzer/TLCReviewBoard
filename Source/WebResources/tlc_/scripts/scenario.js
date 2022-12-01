
function openAddPerson(selectedItem)
{
// Side Dialog
var pageInput = {
    pageType: "custom",
    name: "tlc_connectperson_c7d7a",
    entityName: "tlc_scenario",
    recordId: selectedItem,
};
console.log(pageInput.name);
console.log(pageInput.entityName);
console.log(pageInput.recordId)
let navigationOptions = {
    target: 2, 
    position: 2,
    width: {value: 300, unit: "px"},
    title: "Link a team member"
};
Xrm.Navigation.navigateTo(pageInput, navigationOptions)
    .then(
        function () {
            // Called when page opens
            
        }
    ).catch(
        function (error) {
            // Handle error
        }
    );

}
