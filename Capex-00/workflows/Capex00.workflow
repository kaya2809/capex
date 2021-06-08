{
	"contents": {
		"fdbc9d27-9405-41b1-a8fd-9a61a2fa7245": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "capex00",
			"subject": "CAPEX Approval for '${context.Title}'",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "TotalCost",
				"label": "Total Cost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "RequestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "Country",
				"label": "Country",
				"type": "string",
				"value": "${context.Investment.Country}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}],
			"name": "Capex00",
			"documentation": "Capital Expenditure Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Capex Request"
				},
				"b8a1b4b7-1b6a-4555-8754-077fbddf0f7c": {
					"name": "End (Rejection)"
				},
				"d7898bf6-7995-4bbf-8968-b158ddf35085": {
					"name": "End (Approval)"
				},
				"d549ba94-2a58-430d-b60b-0aaa91bad4ad": {
					"name": "End (Rejection)"
				}
			},
			"activities": {
				"e7e64e90-b0c4-4577-9137-0edc47b42a42": {
					"name": "Prepare Data"
				},
				"cbb383bf-4395-4d42-98cc-089aad40ce5a": {
					"name": "Retrieve Approval Steps"
				},
				"bf9f0b75-a06d-4c69-842d-622ee59b2842": {
					"name": "Approval required?"
				},
				"e0dd0dee-8e90-41e2-9347-649b9e26d518": {
					"name": "Approval Task (Local Manager)"
				},
				"08f0da1a-ea58-499b-831a-d59a49421371": {
					"name": "Handle Approval (Local Manager)"
				},
				"a6eeddd2-12fb-48ab-94c7-bf8fc224071c": {
					"name": "Approval result?"
				},
				"fdf67d1f-777f-4c25-9d65-64585fdb0013": {
					"name": "join"
				},
				"475abf98-c436-41bf-8b28-ef852c1e362d": {
					"name": "Rework Task"
				},
				"61c18fd6-5a5f-452b-9e03-bc7069c71e38": {
					"name": "Approval required?"
				},
				"86d9f4f3-9cba-41ed-933b-bdad8143e626": {
					"name": "Approval Task (Central Manager)"
				},
				"c6d2bb70-b470-460b-987b-841c599fd00a": {
					"name": "Handle Approval (Central Manager)"
				},
				"5d8ab8cb-2aec-403a-92b2-6bdddb2a152e": {
					"name": "Approval result?"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"c673be3e-c84c-4dfe-9d90-9bef66b22158": {
					"name": "SequenceFlow2"
				},
				"9cac1f0f-f3ca-4f82-9679-0b640437f937": {
					"name": "SequenceFlow3"
				},
				"d09e4afc-2904-4bbc-a7cb-4e295e05862c": {
					"name": "yes"
				},
				"4cbef541-efdf-40fc-8718-d74c203351c2": {
					"name": "SequenceFlow5"
				},
				"27ad8299-b65c-49f3-a5bd-bb770197e998": {
					"name": "SequenceFlow6"
				},
				"c079cfb5-689b-42e8-ae73-fb7fb524092a": {
					"name": "Approve"
				},
				"bf870dac-b0d1-4ffc-989a-9e1a75116832": {
					"name": "SequenceFlow8"
				},
				"3e75041b-67a2-4ddd-8180-890ba0758a55": {
					"name": "no"
				},
				"055f7eab-a05f-428d-9fe5-0417e1a89492": {
					"name": "Reject"
				},
				"381d54fa-b723-4856-a458-ea1d522f2954": {
					"name": "Rework"
				},
				"fae9599c-247b-4a2b-9d78-f107c4987535": {
					"name": "SequenceFlow14"
				},
				"93f899a0-345a-4a34-a59d-31a2573a51d7": {
					"name": "SequenceFlow16"
				},
				"68fdee89-2586-42de-9c20-e51650728f64": {
					"name": "SequenceFlow26"
				},
				"d26ccfe4-e169-4d67-b066-ca2fbb4753ab": {
					"name": "Approve"
				},
				"5c77d565-2eba-4ccc-8dff-2406b50e0360": {
					"name": "Reject"
				},
				"b05ff55d-20fc-469b-8e9a-a355403ff3f7": {
					"name": "no"
				},
				"41ea00f9-bf04-4ad5-8faa-05c6c4cac932": {
					"name": "yes"
				},
				"6c8d128a-6626-4977-b814-79cb95dbf95c": {
					"name": "Rework"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Capex Request",
			"sampleContextRefs": {
				"cc320c06-84d5-41b4-9036-5eb3517a8793": {}
			}
		},
		"b8a1b4b7-1b6a-4555-8754-077fbddf0f7c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"d6a50571-0ff5-4085-b9e8-d1f9214cde07": {}
			}
		},
		"d7898bf6-7995-4bbf-8968-b158ddf35085": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent6",
			"name": "End (Approval)",
			"eventDefinitions": {
				"b8a0674a-6304-4cfb-b499-79a167202d9b": {}
			}
		},
		"d549ba94-2a58-430d-b60b-0aaa91bad4ad": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent7",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"092f7493-c01e-48b5-9d6f-b10296d5c120": {}
			}
		},
		"e7e64e90-b0c4-4577-9137-0edc47b42a42": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Capex00/PrepareData.js",
			"id": "scripttask1",
			"name": "Prepare Data"
		},
		"cbb383bf-4395-4d42-98cc-089aad40ce5a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.approvalStepsResult}",
			"headers": [],
			"id": "servicetask1",
			"name": "Retrieve Approval Steps"
		},
		"bf9f0b75-a06d-4c69-842d-622ee59b2842": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval required?",
			"default": "3e75041b-67a2-4ddd-8180-890ba0758a55"
		},
		"e0dd0dee-8e90-41e2-9347-649b9e26d518": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Local Manageras Subject",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.lm_userid}, ${info.startedBy}",
			"formReference": "/forms/Capex00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"customAttributes": [],
			"id": "usertask1",
			"name": "Approval Task (Local Manager)"
		},
		"08f0da1a-ea58-499b-831a-d59a49421371": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Capex00/HandleApprovalLocalManager.js",
			"id": "scripttask2",
			"name": "Handle Approval (Local Manager)"
		},
		"a6eeddd2-12fb-48ab-94c7-bf8fc224071c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval result?",
			"default": "055f7eab-a05f-428d-9fe5-0417e1a89492"
		},
		"fdf67d1f-777f-4c25-9d65-64585fdb0013": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "join"
		},
		"475abf98-c436-41bf-8b28-ef852c1e362d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework for '${context.Title}'",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/Capex00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Rework Task",
			"dueDateRef": "c33b1b28-c4eb-4f81-9f8b-a82c897f6f73"
		},
		"61c18fd6-5a5f-452b-9e03-bc7069c71e38": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Approval required?",
			"default": "b05ff55d-20fc-469b-8e9a-a355403ff3f7"
		},
		"86d9f4f3-9cba-41ed-933b-bdad8143e626": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}'",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.cm_userid}, ${info.startedBy}",
			"formReference": "/forms/Capex00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask3",
			"name": "Approval Task (Central Manager)"
		},
		"c6d2bb70-b470-460b-987b-841c599fd00a": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Capex00/HandleApprovalCentralManager.js",
			"id": "scripttask3",
			"name": "Handle Approval (Central Manager)"
		},
		"5d8ab8cb-2aec-403a-92b2-6bdddb2a152e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "Approval result?",
			"default": "5c77d565-2eba-4ccc-8dff-2406b50e0360"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "e7e64e90-b0c4-4577-9137-0edc47b42a42"
		},
		"c673be3e-c84c-4dfe-9d90-9bef66b22158": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "e7e64e90-b0c4-4577-9137-0edc47b42a42",
			"targetRef": "cbb383bf-4395-4d42-98cc-089aad40ce5a"
		},
		"9cac1f0f-f3ca-4f82-9679-0b640437f937": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "cbb383bf-4395-4d42-98cc-089aad40ce5a",
			"targetRef": "bf9f0b75-a06d-4c69-842d-622ee59b2842"
		},
		"d09e4afc-2904-4bbc-a7cb-4e295e05862c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.lm_required}",
			"id": "sequenceflow4",
			"name": "yes",
			"sourceRef": "bf9f0b75-a06d-4c69-842d-622ee59b2842",
			"targetRef": "e0dd0dee-8e90-41e2-9347-649b9e26d518"
		},
		"4cbef541-efdf-40fc-8718-d74c203351c2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "e0dd0dee-8e90-41e2-9347-649b9e26d518",
			"targetRef": "08f0da1a-ea58-499b-831a-d59a49421371"
		},
		"27ad8299-b65c-49f3-a5bd-bb770197e998": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "08f0da1a-ea58-499b-831a-d59a49421371",
			"targetRef": "a6eeddd2-12fb-48ab-94c7-bf8fc224071c"
		},
		"c079cfb5-689b-42e8-ae73-fb7fb524092a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow7",
			"name": "Approve",
			"sourceRef": "a6eeddd2-12fb-48ab-94c7-bf8fc224071c",
			"targetRef": "fdf67d1f-777f-4c25-9d65-64585fdb0013"
		},
		"bf870dac-b0d1-4ffc-989a-9e1a75116832": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "fdf67d1f-777f-4c25-9d65-64585fdb0013",
			"targetRef": "61c18fd6-5a5f-452b-9e03-bc7069c71e38"
		},
		"3e75041b-67a2-4ddd-8180-890ba0758a55": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "no",
			"sourceRef": "bf9f0b75-a06d-4c69-842d-622ee59b2842",
			"targetRef": "fdf67d1f-777f-4c25-9d65-64585fdb0013"
		},
		"055f7eab-a05f-428d-9fe5-0417e1a89492": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "Reject",
			"sourceRef": "a6eeddd2-12fb-48ab-94c7-bf8fc224071c",
			"targetRef": "b8a1b4b7-1b6a-4555-8754-077fbddf0f7c"
		},
		"381d54fa-b723-4856-a458-ea1d522f2954": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow12",
			"name": "Rework",
			"sourceRef": "a6eeddd2-12fb-48ab-94c7-bf8fc224071c",
			"targetRef": "475abf98-c436-41bf-8b28-ef852c1e362d"
		},
		"fae9599c-247b-4a2b-9d78-f107c4987535": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "475abf98-c436-41bf-8b28-ef852c1e362d",
			"targetRef": "e7e64e90-b0c4-4577-9137-0edc47b42a42"
		},
		"93f899a0-345a-4a34-a59d-31a2573a51d7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "86d9f4f3-9cba-41ed-933b-bdad8143e626",
			"targetRef": "c6d2bb70-b470-460b-987b-841c599fd00a"
		},
		"68fdee89-2586-42de-9c20-e51650728f64": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "c6d2bb70-b470-460b-987b-841c599fd00a",
			"targetRef": "5d8ab8cb-2aec-403a-92b2-6bdddb2a152e"
		},
		"d26ccfe4-e169-4d67-b066-ca2fbb4753ab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow27",
			"name": "Approve",
			"sourceRef": "5d8ab8cb-2aec-403a-92b2-6bdddb2a152e",
			"targetRef": "d7898bf6-7995-4bbf-8968-b158ddf35085"
		},
		"5c77d565-2eba-4ccc-8dff-2406b50e0360": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "Reject",
			"sourceRef": "5d8ab8cb-2aec-403a-92b2-6bdddb2a152e",
			"targetRef": "d549ba94-2a58-430d-b60b-0aaa91bad4ad"
		},
		"b05ff55d-20fc-469b-8e9a-a355403ff3f7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "no",
			"sourceRef": "61c18fd6-5a5f-452b-9e03-bc7069c71e38",
			"targetRef": "d7898bf6-7995-4bbf-8968-b158ddf35085"
		},
		"41ea00f9-bf04-4ad5-8faa-05c6c4cac932": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.cm_required}",
			"id": "sequenceflow32",
			"name": "yes",
			"sourceRef": "61c18fd6-5a5f-452b-9e03-bc7069c71e38",
			"targetRef": "86d9f4f3-9cba-41ed-933b-bdad8143e626"
		},
		"6c8d128a-6626-4977-b814-79cb95dbf95c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow33",
			"name": "Rework",
			"sourceRef": "5d8ab8cb-2aec-403a-92b2-6bdddb2a152e",
			"targetRef": "475abf98-c436-41bf-8b28-ef852c1e362d"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"325007ab-ccb9-413d-8acb-dcea5fa7fdeb": {},
				"92c9fd85-bcdb-4f5f-9e09-c18457785501": {},
				"d16902e1-3bc7-4b84-821a-f1fed9536cfd": {},
				"e6d96961-f187-4f13-a633-8cde4ead96b4": {},
				"2607705b-f15d-4c17-bd11-1b14cf3d02c9": {},
				"28496599-c5c9-468a-a547-89c400e072f2": {},
				"03cf7d15-0119-4ce1-b9ff-6202d34834d2": {},
				"46dd89bc-766a-4d36-8a59-97a6b5ca0656": {},
				"e402ec7f-8af2-4ef2-af29-fb8132373b17": {},
				"7f0d0921-ef40-4638-8bd6-4f92de064675": {},
				"aeea7787-9524-45c1-9351-d21d5ed6d0bb": {},
				"975e4db6-a48b-4521-858b-544d142df100": {},
				"e14b3d5f-d821-4180-a84d-5ccec5c9cdc0": {},
				"6508cbcf-8550-4b77-a62f-fb6facec4558": {},
				"ed7abd95-3a27-4a48-b4ad-e58b257621d0": {},
				"e3c7d713-4d35-47b5-9317-0e8b0a03f301": {},
				"17036687-938c-4478-a5ed-1947b165c2c1": {},
				"ef5b6532-f0da-4d56-87fb-44ad98c2831e": {},
				"f8088db1-bdc6-4dfe-97d5-4587e664b781": {},
				"4496175d-5424-4305-9e4c-640cbb1f99ff": {},
				"a1ad49fa-3e07-4078-9b81-13f9d7200704": {},
				"0aa120e1-2579-49fb-b5d0-536d8ec63d17": {},
				"9b697703-ee3e-4773-9063-7317e3f68b24": {},
				"6091ff09-496a-48a3-94b5-c287332e9ea2": {},
				"cb78159e-3089-4f4b-ac91-ec81422011b4": {},
				"7763136c-4134-4389-86f7-5602d50ebcab": {},
				"10db2a21-0da4-4c8b-9218-2dbff794ebf8": {},
				"c1b7ae8f-bb75-4d9d-86bf-f5d2f6b7c648": {},
				"e6f08371-1249-4a36-8bae-1b4e9550e921": {},
				"62a9b2d8-db82-4616-bf40-866b5821b56e": {},
				"dbcd12e4-d1e5-42ce-a745-b25707616962": {},
				"688b969c-52d9-4775-938e-c5ecee624e07": {},
				"1bc2115b-34cf-497d-b55e-2ed1a612945a": {}
			}
		},
		"cc320c06-84d5-41b4-9036-5eb3517a8793": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/Capex00/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"d6a50571-0ff5-4085-b9e8-d1f9214cde07": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"b8a0674a-6304-4cfb-b499-79a167202d9b": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition5"
		},
		"092f7493-c01e-48b5-9d6f-b10296d5c120": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition6"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "325007ab-ccb9-413d-8acb-dcea5fa7fdeb",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"325007ab-ccb9-413d-8acb-dcea5fa7fdeb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "e7e64e90-b0c4-4577-9137-0edc47b42a42"
		},
		"92c9fd85-bcdb-4f5f-9e09-c18457785501": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,116.9375 370.37073643296924,116.9375",
			"sourceSymbol": "325007ab-ccb9-413d-8acb-dcea5fa7fdeb",
			"targetSymbol": "d16902e1-3bc7-4b84-821a-f1fed9536cfd",
			"object": "c673be3e-c84c-4dfe-9d90-9bef66b22158"
		},
		"d16902e1-3bc7-4b84-821a-f1fed9536cfd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 320.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "cbb383bf-4395-4d42-98cc-089aad40ce5a"
		},
		"e6d96961-f187-4f13-a633-8cde4ead96b4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "370.37073643296924,117.21875 470.9353682164846,117.21875",
			"sourceSymbol": "d16902e1-3bc7-4b84-821a-f1fed9536cfd",
			"targetSymbol": "2607705b-f15d-4c17-bd11-1b14cf3d02c9",
			"object": "9cac1f0f-f3ca-4f82-9679-0b640437f937"
		},
		"2607705b-f15d-4c17-bd11-1b14cf3d02c9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 449.9353682164846,
			"y": 96.3125,
			"object": "bf9f0b75-a06d-4c69-842d-622ee59b2842"
		},
		"28496599-c5c9-468a-a547-89c400e072f2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470.9353682164846,117.359375 581.4676841082423,117.359375",
			"sourceSymbol": "2607705b-f15d-4c17-bd11-1b14cf3d02c9",
			"targetSymbol": "03cf7d15-0119-4ce1-b9ff-6202d34834d2",
			"object": "d09e4afc-2904-4bbc-a7cb-4e295e05862c"
		},
		"03cf7d15-0119-4ce1-b9ff-6202d34834d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 531.4676841082423,
			"y": 87.40625,
			"width": 100,
			"height": 60,
			"object": "e0dd0dee-8e90-41e2-9347-649b9e26d518"
		},
		"46dd89bc-766a-4d36-8a59-97a6b5ca0656": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "581.4676841082423,117.4296875 697.9838420541212,117.4296875",
			"sourceSymbol": "03cf7d15-0119-4ce1-b9ff-6202d34834d2",
			"targetSymbol": "e402ec7f-8af2-4ef2-af29-fb8132373b17",
			"object": "4cbef541-efdf-40fc-8718-d74c203351c2"
		},
		"e402ec7f-8af2-4ef2-af29-fb8132373b17": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 647.9838420541212,
			"y": 87.453125,
			"width": 100,
			"height": 60,
			"object": "08f0da1a-ea58-499b-831a-d59a49421371"
		},
		"7f0d0921-ef40-4638-8bd6-4f92de064675": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "697.9838420541212,119.46484375 798.7419210270606,119.46484375",
			"sourceSymbol": "e402ec7f-8af2-4ef2-af29-fb8132373b17",
			"targetSymbol": "aeea7787-9524-45c1-9351-d21d5ed6d0bb",
			"object": "27ad8299-b65c-49f3-a5bd-bb770197e998"
		},
		"aeea7787-9524-45c1-9351-d21d5ed6d0bb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 777.7419210270606,
			"y": 100.4765625,
			"object": "a6eeddd2-12fb-48ab-94c7-bf8fc224071c"
		},
		"975e4db6-a48b-4521-858b-544d142df100": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "798.7419210270606,120 863.3709605135302,120",
			"sourceSymbol": "aeea7787-9524-45c1-9351-d21d5ed6d0bb",
			"targetSymbol": "e14b3d5f-d821-4180-a84d-5ccec5c9cdc0",
			"object": "c079cfb5-689b-42e8-ae73-fb7fb524092a"
		},
		"e14b3d5f-d821-4180-a84d-5ccec5c9cdc0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 863.3709605135302,
			"y": 98.48828125,
			"object": "fdf67d1f-777f-4c25-9d65-64585fdb0013"
		},
		"6508cbcf-8550-4b77-a62f-fb6facec4558": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "884.3709605135302,119.4912109375 939.6854802567651,119.4912109375",
			"sourceSymbol": "e14b3d5f-d821-4180-a84d-5ccec5c9cdc0",
			"targetSymbol": "a1ad49fa-3e07-4078-9b81-13f9d7200704",
			"object": "bf870dac-b0d1-4ffc-989a-9e1a75116832"
		},
		"ed7abd95-3a27-4a48-b4ad-e58b257621d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470.9353682164846,96.8125 470.93536376953125,46.3125 884.3709716796875,46.3125 884.3709605135302,98.98828125",
			"sourceSymbol": "2607705b-f15d-4c17-bd11-1b14cf3d02c9",
			"targetSymbol": "e14b3d5f-d821-4180-a84d-5ccec5c9cdc0",
			"object": "3e75041b-67a2-4ddd-8180-890ba0758a55"
		},
		"e3c7d713-4d35-47b5-9317-0e8b0a03f301": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 777.7419210270606,
			"y": -96.0234375,
			"width": 35,
			"height": 35,
			"object": "b8a1b4b7-1b6a-4555-8754-077fbddf0f7c"
		},
		"17036687-938c-4478-a5ed-1947b165c2c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "797,121.4765625 797,-78.5234375",
			"sourceSymbol": "aeea7787-9524-45c1-9351-d21d5ed6d0bb",
			"targetSymbol": "e3c7d713-4d35-47b5-9317-0e8b0a03f301",
			"object": "055f7eab-a05f-428d-9fe5-0417e1a89492"
		},
		"ef5b6532-f0da-4d56-87fb-44ad98c2831e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 186,
			"y": 205,
			"width": 100,
			"height": 62,
			"object": "475abf98-c436-41bf-8b28-ef852c1e362d"
		},
		"f8088db1-bdc6-4dfe-97d5-4587e664b781": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "798.7419210270606,141.9765625 798.741943359375,236 285.5,236",
			"sourceSymbol": "aeea7787-9524-45c1-9351-d21d5ed6d0bb",
			"targetSymbol": "ef5b6532-f0da-4d56-87fb-44ad98c2831e",
			"object": "381d54fa-b723-4856-a458-ea1d522f2954"
		},
		"4496175d-5424-4305-9e4c-640cbb1f99ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.12073643296924,236 236.12073643296924,146.25",
			"sourceSymbol": "ef5b6532-f0da-4d56-87fb-44ad98c2831e",
			"targetSymbol": "325007ab-ccb9-413d-8acb-dcea5fa7fdeb",
			"object": "fae9599c-247b-4a2b-9d78-f107c4987535"
		},
		"a1ad49fa-3e07-4078-9b81-13f9d7200704": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 918.6854802567651,
			"y": 98.494140625,
			"object": "61c18fd6-5a5f-452b-9e03-bc7069c71e38"
		},
		"0aa120e1-2579-49fb-b5d0-536d8ec63d17": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1008.3427401283825,
			"y": 87.4970703125,
			"width": 100,
			"height": 60,
			"object": "86d9f4f3-9cba-41ed-933b-bdad8143e626"
		},
		"9b697703-ee3e-4773-9063-7317e3f68b24": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1058.3427401283825,117.247802734375 1187.9213700641913,117.247802734375",
			"sourceSymbol": "0aa120e1-2579-49fb-b5d0-536d8ec63d17",
			"targetSymbol": "6091ff09-496a-48a3-94b5-c287332e9ea2",
			"object": "93f899a0-345a-4a34-a59d-31a2573a51d7"
		},
		"6091ff09-496a-48a3-94b5-c287332e9ea2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1137.9213700641913,
			"y": 86.99853515625,
			"width": 100,
			"height": 60,
			"object": "c6d2bb70-b470-460b-987b-841c599fd00a"
		},
		"cb78159e-3089-4f4b-ac91-ec81422011b4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1284.4213700641913,
			"y": 95.99853515625,
			"object": "5d8ab8cb-2aec-403a-92b2-6bdddb2a152e"
		},
		"7763136c-4134-4389-86f7-5602d50ebcab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1187.9213700641913,117 1305.4213700641913,117",
			"sourceSymbol": "6091ff09-496a-48a3-94b5-c287332e9ea2",
			"targetSymbol": "cb78159e-3089-4f4b-ac91-ec81422011b4",
			"object": "68fdee89-2586-42de-9c20-e51650728f64"
		},
		"10db2a21-0da4-4c8b-9218-2dbff794ebf8": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1384.4213700641913,
			"y": 99.49853515625,
			"width": 35,
			"height": 35,
			"object": "d7898bf6-7995-4bbf-8968-b158ddf35085"
		},
		"c1b7ae8f-bb75-4d9d-86bf-f5d2f6b7c648": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1305.4213700641913,118.249267578125 1401.9213700641913,118.249267578125",
			"sourceSymbol": "cb78159e-3089-4f4b-ac91-ec81422011b4",
			"targetSymbol": "10db2a21-0da4-4c8b-9218-2dbff794ebf8",
			"object": "d26ccfe4-e169-4d67-b066-ca2fbb4753ab"
		},
		"e6f08371-1249-4a36-8bae-1b4e9550e921": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1283.5,
			"y": -22.5,
			"width": 35,
			"height": 35,
			"object": "d549ba94-2a58-430d-b60b-0aaa91bad4ad"
		},
		"62a9b2d8-db82-4616-bf40-866b5821b56e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1302,116.99853515625 1302,-5",
			"sourceSymbol": "cb78159e-3089-4f4b-ac91-ec81422011b4",
			"targetSymbol": "e6f08371-1249-4a36-8bae-1b4e9550e921",
			"object": "5c77d565-2eba-4ccc-8dff-2406b50e0360"
		},
		"dbcd12e4-d1e5-42ce-a745-b25707616962": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "936.999998848101,100.49414045890232 937.0000044311796,-57.00000016609768 1401.92138671875,-57 1401.9213700641913,99.99853515625",
			"sourceSymbol": "a1ad49fa-3e07-4078-9b81-13f9d7200704",
			"targetSymbol": "10db2a21-0da4-4c8b-9218-2dbff794ebf8",
			"object": "b05ff55d-20fc-469b-8e9a-a355403ff3f7"
		},
		"688b969c-52d9-4775-938e-c5ecee624e07": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "939.6854802567651,119 1008.8427401283825,119",
			"sourceSymbol": "a1ad49fa-3e07-4078-9b81-13f9d7200704",
			"targetSymbol": "0aa120e1-2579-49fb-b5d0-536d8ec63d17",
			"object": "41ea00f9-bf04-4ad5-8faa-05c6c4cac932"
		},
		"1bc2115b-34cf-497d-b55e-2ed1a612945a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1305,131.99853515625 1305,299 285.5,299 285.5,265",
			"sourceSymbol": "cb78159e-3089-4f4b-ac91-ec81422011b4",
			"targetSymbol": "ef5b6532-f0da-4d56-87fb-44ad98c2831e",
			"object": "6c8d128a-6626-4977-b814-79cb95dbf95c"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 6,
			"timereventdefinition": 2,
			"sequenceflow": 33,
			"startevent": 1,
			"endevent": 7,
			"usertask": 4,
			"servicetask": 1,
			"scripttask": 3,
			"exclusivegateway": 6,
			"referencedsubflow": 1
		},
		"c33b1b28-c4eb-4f81-9f8b-a82c897f6f73": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P2D",
			"id": "timereventdefinition1"
		}
	}
}