// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/api_strategy_envelope.dart';
import '../../models/error.dart';
import './shapes/shapes_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \strategies\{slug}
class WithSlugItemRequestBuilder extends BaseRequestBuilder<WithSlugItemRequestBuilder> {
    ///  The shapes property
    ShapesRequestBuilder get shapes {
        return ShapesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithSlugItemRequestBuilder clone() {
        return WithSlugItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSlugItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSlugItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/strategies/{slug}", pathParameters) ;
    /// Instantiates a new [WithSlugItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSlugItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/strategies/{slug}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiStrategyEnvelope?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiStrategyEnvelope>(requestInfo, ApiStrategyEnvelope.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
