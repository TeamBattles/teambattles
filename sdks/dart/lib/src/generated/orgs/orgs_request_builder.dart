// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/create_org_body.dart';
import '../models/create_org_response.dart';
import '../models/error.dart';
import './discover/discover_request_builder.dart';
import './item/with_identifier_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs
class OrgsRequestBuilder extends BaseRequestBuilder<OrgsRequestBuilder> {
    ///  The discover property
    DiscoverRequestBuilder get discover {
        return DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.orgs.item collection
    ///  [identifier] Organization slug or Convex organization ID.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    OrgsRequestBuilder clone() {
        return OrgsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OrgsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrgsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs", pathParameters) ;
    /// Instantiates a new [OrgsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrgsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Creates a new organization as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CreateOrgResponse?> postAsync(CreateOrgBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CreateOrgResponse>(requestInfo, CreateOrgResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Creates a new organization as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreateOrgBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
