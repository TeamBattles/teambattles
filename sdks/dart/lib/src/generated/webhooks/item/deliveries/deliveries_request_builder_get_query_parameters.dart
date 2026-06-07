// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
class DeliveriesRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Opaque continuation cursor from a prior page's continueCursor.
    String? cursor;
    ///  Page size 1-100 (default 25), enforced by the handler.
    String? limit;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'cursor' : cursor,
            'limit' : limit,
        };
    }
}
