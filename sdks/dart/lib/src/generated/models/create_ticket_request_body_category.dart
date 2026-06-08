// ignore_for_file: type=lint
/// auto generated
///  Support category. Entity-bound and staff-only categories are rejected.
enum CreateTicketRequestBodyCategory {
    account('account'),
    technicalBug('technical_bug'),
    featureRequest('feature_request'),
    billing('billing'),
    other('other');
    const CreateTicketRequestBodyCategory(this.value);
    final String value;
}
