# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.DeleteCandidatesResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobAdID",
    :"AnalysisStatus",
    :"Deleted"
  ]

  @type t :: %__MODULE__{
    :"JobAdID" => AnyOfstringstring | nil,
    :"AnalysisStatus" => String.t,
    :"Deleted" => boolean()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.DeleteCandidatesResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"JobAdID", :struct, inda_hr.Model.AnyOfstringstring, options)
  end
end

