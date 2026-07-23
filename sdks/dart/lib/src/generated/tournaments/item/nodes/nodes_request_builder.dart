// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_node_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\nodes
class NodesRequestBuilder extends BaseRequestBuilder<NodesRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.nodes.item collection
    ///  [nodeId] Bracket node ID.
    WithNodeItemRequestBuilder byNodeId(String nodeId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('nodeId', () => nodeId);
        return WithNodeItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    NodesRequestBuilder clone() {
        return NodesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NodesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NodesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes", pathParameters) ;
    /// Instantiates a new [NodesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NodesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes", {RequestInformation.rawUrlKey : rawUrl}) ;
}
