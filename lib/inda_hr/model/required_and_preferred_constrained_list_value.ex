# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RequiredAndPreferredConstrainedListValue do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Required",
    :"Preferred"
  ]

  @type t :: %__MODULE__{
    :"Required" => [inda_hr.Model.OptionalJobAdSkill.t],
    :"Preferred" => [inda_hr.Model.OptionalJobAdSkill.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RequiredAndPreferredConstrainedListValue do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Required", :list, inda_hr.Model.OptionalJobAdSkill, options)
    |> deserialize(:"Preferred", :list, inda_hr.Model.OptionalJobAdSkill, options)
  end
end
