// ignore_for_file: type=lint
/// auto generated
///  Publish status (defaults to DRAFT).
enum CreateMatchRequestBodyPublishStatus {
    draft('DRAFT'),
    published('PUBLISHED'),
    archived('ARCHIVED');
    const CreateMatchRequestBodyPublishStatus(this.value);
    final String value;
}
