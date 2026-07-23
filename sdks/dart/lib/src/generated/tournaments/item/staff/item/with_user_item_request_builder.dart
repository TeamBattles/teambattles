// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\staff\{userId}
class WithUserItemRequestBuilder extends BaseRequestBuilder<WithUserItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithUserItemRequestBuilder clone() {
        return WithUserItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithUserItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithUserItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/staff/{userId}", pathParameters) ;
    /// Instantiates a new [WithUserItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithUserItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/staff/{userId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the delegated staff row for the named user. Requires the tournaments staff capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403, so a moderator cannot remove a peer. Idempotent: removing a user who holds no staff row succeeds, so a retry after a lost response is safe. Removing the host has no effect, because host authority comes from the host record rather than a staff row.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentWriteAck>(requestInfo, TournamentWriteAck.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the delegated staff row for the named user. Requires the tournaments staff capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403, so a moderator cannot remove a peer. Idempotent: removing a user who holds no staff row succeeds, so a retry after a lost response is safe. Removing the host has no effect, because host authority comes from the host record rather than a staff row.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
