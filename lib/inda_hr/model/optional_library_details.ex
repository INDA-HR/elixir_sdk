# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalLibraryDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"URL",
    :"AdditionalInfo"
  ]

  @type t :: %__MODULE__{
    :"URL" => String.t | nil,
    :"AdditionalInfo" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalLibraryDetails do
  def decode(value, _options) do
    value
  end
end

