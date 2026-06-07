// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './organizations_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \users\{identifier}\organizations
class OrganizationsRequestBuilder extends BaseRequestBuilder<OrganizationsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    OrganizationsRequestBuilder clone() {
        return OrganizationsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OrganizationsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/organizations", pathParameters) ;
    /// Instantiates a new [OrganizationsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/organizations", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns API-safe organization affiliation rows for public or limited profiles, plus self. Non-self rows include only public organizations. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationsGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationsGetResponse>(requestInfo, OrganizationsGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns API-safe organization affiliation rows for public or limited profiles, plus self. Non-self rows include only public organizations. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
