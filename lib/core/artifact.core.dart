
abstract class IArtifact <TData, TStatus> {
  String get description;
  set description(String description);
  
  TData get data;
  set data(TData data);

  TStatus get status;
  set status(TStatus status);
}
