class BusinessCard {
  final String name;
  final String email;
  final String title;
  final String phoneNumber;
  final String websiteURL;

  BusinessCard(
      {this.name = "Nick Ledbetter",
      this.email = "ledbetni@oregonstate.edu",
      this.title = "Developer Extraordinaire",
      this.phoneNumber = '281.330.8004',
      this.websiteURL = "github.com/ledbetni/"});
}
