# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RelocationBoolBaseModel do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"IsPossible",
    :"IsMandatory",
    :"IsAllExpensesPaid"
  ]

  @type t :: %__MODULE__{
    :"IsPossible" => boolean() | nil,
    :"IsMandatory" => boolean() | nil,
    :"IsAllExpensesPaid" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RelocationBoolBaseModel do
  def decode(value, _options) do
    value
  end
end

