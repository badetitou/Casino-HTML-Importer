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
				repository: 'github://badetitou/Casino:master/src' ].
	spec baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo' ].

]

{ #category : #baselines }
BaselineOfCasinoHTMLImporter >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfCasinoHTMLImporter >> definePackages: spec [
	spec
		package: 'BaselineOfCasinoHTMLImporter';
		package: 'Casino-HTML-Importer'
			with: [ spec requires: #('Casino' 'XMLParser') ]
]
