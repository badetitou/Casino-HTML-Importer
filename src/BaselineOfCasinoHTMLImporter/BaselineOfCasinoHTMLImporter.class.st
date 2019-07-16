Class {
	#name : #BaselineOfCasinoHTMLImporter,
	#superclass : #BaselineOf,
	#category : #BaselineOfCasinoHTMLImporter
}

{ #category : #baselines }
BaselineOfCasinoHTMLImporter >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfCasinoHTMLImporter >> defineDependencies: spec [
	spec
		baseline: 'Casino'
		with: [ spec
				repository: 'github://badetitou/Casino:master/src' ]
]

{ #category : #baselines }
BaselineOfCasinoHTMLImporter >> defineGroups: spec [
	spec
		group: 'default'
		with: #('Casino-HTML-Importer')
]

{ #category : #baselines }
BaselineOfCasinoHTMLImporter >> definePackages: spec [
	spec
		package: 'BaselineOfCasinoHTMLImporter';
		package: 'Casino-HTML-Importer'
			with: [ spec requires: #('Casino') ]
]
