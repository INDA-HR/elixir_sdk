# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.PatchCompanyResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ID",
    :"AnalysisStatus",
    :"Updated"
  ]

  @type t :: %__MODULE__{
    :"ID" => String.t,
    :"AnalysisStatus" => String.t | nil,
    :"Updated" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PatchCompanyResponse do
  def decode(value, _options) do
    value
  end
end

