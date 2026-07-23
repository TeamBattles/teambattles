// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './respond/respond_request_builder.dart';
import './revoke/revoke_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agency\offers\{offerId}
class WithOfferItemRequestBuilder extends BaseRequestBuilder<WithOfferItemRequestBuilder> {
    ///  The respond property
    RespondRequestBuilder get respond {
        return RespondRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The revoke property
    RevokeRequestBuilder get revoke {
        return RevokeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithOfferItemRequestBuilder clone() {
        return WithOfferItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithOfferItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithOfferItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}", pathParameters) ;
    /// Instantiates a new [WithOfferItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithOfferItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
