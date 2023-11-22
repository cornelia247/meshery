package meshmodel_policy

group_objects_with_matching_labels[key]{
	key := {result |
		some value
		some k
		svc := input.services[_]
		labels := svc.labels
		value = labels[k]
		comp := {name: id |
			some name
			x := input.services[name]
			x.labels == labels
			id := x.traits.meshmap.id
		}
		k == labels_map
		result := {k: {value: comp}}
	}
}
