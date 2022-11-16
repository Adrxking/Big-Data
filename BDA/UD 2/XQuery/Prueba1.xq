declare variable $max external := max(//organization/count(members));
for $org in //organization
where count($org/members) = $max
return $org
