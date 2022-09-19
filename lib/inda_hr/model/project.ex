# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Project do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ProjectName",
    :"Description",
    :"Roles",
    :"Keywords",
    :"StartDate",
    :"EndDate",
    :"Ongoing",
    :"Link"
  ]

  @type t :: %__MODULE__{
    :"ProjectName" => inda_hr.Model.BaseModelsName.t | nil,
    :"Description" => inda_hr.Model.Description.t | nil,
    :"Roles" => [inda_hr.Model.Role.t] | nil,
    :"Keywords" => [inda_hr.Model.Keyword.t] | nil,
    :"StartDate" => inda_hr.Model.DateTime.t | nil,
    :"EndDate" => inda_hr.Model.DateTime.t | nil,
    :"Ongoing" => inda_hr.Model.Ongoing.t | nil,
    :"Link" => inda_hr.Model.ResumeLinkLink.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Project do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ProjectName", :struct, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"Description", :struct, inda_hr.Model.Description, options)
    |> deserialize(:"Roles", :list, inda_hr.Model.Role, options)
    |> deserialize(:"Keywords", :list, inda_hr.Model.Keyword, options)
    |> deserialize(:"Ongoing", :struct, inda_hr.Model.Ongoing, options)
    |> deserialize(:"Link", :struct, inda_hr.Model.ResumeLinkLink, options)
  end
end
