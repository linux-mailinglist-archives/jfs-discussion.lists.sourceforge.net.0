Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A17BD20ED
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P55bcphbZCAvO0RISNz5AhElJMx2Unyonb958NAP5nE=; b=eyT3bJ3b29fGA0ro73n2eNR7ce
	wksLcLxyvGoZMM2ERfcddA1utFJsX1I2kPXNXWiBlWvAR5BTaNLZ7r93jYl01eGElAZ/W0Oorjk3t
	h1RUL35CO6ss1pJ93vXJlBoVXFOTeNKHfMMkKu/ZN/KvIakN+8Km8ufRPNYvRqfFZ8xs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Dus-00080Y-6G;
	Mon, 13 Oct 2025 08:28:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=374750ffc=Johannes.Thumshirn@wdc.com>)
 id 1v8Dum-0007zr-Em for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QEP8+JThITTWJeb3AXNN7iCfUhWu5MvnQDU+55VclbI=; b=Kzu/wDf5YWaqYZOBFSRpOwsoVr
 HYB8bzKg3+Og5RuZ6OL2XiNHQ6Tq8icT5/kp77gHZPlQtxH35gzgP6sxdvn7o4sEodO5J+64IMdJV
 Z5pkkYCW5maSZbUKSBq/fZgJODr3jfZfcQOqoG2r63BXzq3dX4LttGDi4LTX9mB/iifM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QEP8+JThITTWJeb3AXNN7iCfUhWu5MvnQDU+55VclbI=; b=gvnyt/ouHGHwyWoxXtbB0jm1zg
 JltBiI5V4amE97LVzHkoLgvJE6SJ+tsET5oh9zaszXmzfkfFnFel51AsH9a+8l/SjPKFM9HDGJ88Y
 rA5N6Q2lIRJAAkw7Y31mn0rcRTEysDhzSAdzecUHzNWz2bAadvqpkqz8gIC9A+K7TGL8=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Duk-0007R8-RP for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1760344098; x=1791880098;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QEP8+JThITTWJeb3AXNN7iCfUhWu5MvnQDU+55VclbI=;
 b=QcFuaGlEy1z3DDBcYU6U0tKUqF7VA8Qt8nANHKpV0FUlSLaKcMQIlxrz
 bZ2kcDl4MgoTK2lDPxHImNoOT2TRVYhyRP3ZwSVAHQpV9pMVxbzL8g+kW
 sPq7oOf5IK3fCcZ1WDtcseCWUtfH4YhVk0p4qbVcD/SZBdrGPpgD90wLF
 W/o6EIk8rjqn6EMrPYObOWTd3kpFaFTjJGfP0gfOPdPfRmdvyOVh/XvSL
 SuobchsmULMhqj0vvO8uxhzmVMtKvh9EjRfwK+0b101Fvj/0J0JVdiPht
 RngCj3pLpViH8qITIG7SmvFuRPWlKPq37JiPEnCy6aFkuNEUHkv+5eYnj w==;
X-CSE-ConnectionGUID: 1VnNiSn5QvCbsDlh/ov2Mw==
X-CSE-MsgGUID: oLjDA3nHSfaTITRF0CjfVQ==
X-IronPort-AV: E=Sophos;i="6.19,225,1754928000"; d="scan'208";a="132776238"
Received: from mail-westus3azon11011044.outbound.protection.outlook.com (HELO
 PH0PR06CU001.outbound.protection.outlook.com) ([40.107.208.44])
 by ob1.hgst.iphmx.com with ESMTP; 13 Oct 2025 16:12:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jBXlpjAKfSQt4iiTDnWGJ8/ynUqaE1BX5ma7Z4j4inAMyU9qX3WfTUxiBVB/4rpn4FPXTfKZ+qlII2nrrq8px2dzT/S4ewUwTBaSbaH3J1jOsiv5wS6RRoJRqpzFIJo1dzaVaVYJjoiL2e48ETkoL8zn+eR38MACV6saMqjrMRrzW7sZSOhtfITcARW5N63H5lZkneMFWLa96A8aPn/sNWEsdo1ZmHCPXOBdo9GEuwzDG23coE1C+yKmhHrhy8rpYjk63l5hnpnabCytmP6842KBhCIxjzXnybSm9dqPwtVMBIVpa+Os8GAXYfEi3ed/sZbqqKGWHZAGz6IxCTvPFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QEP8+JThITTWJeb3AXNN7iCfUhWu5MvnQDU+55VclbI=;
 b=BAJK7u4ba/BaUqRfKGDwbsKVp8RJVFuWQOqLp7/rzoLyN/daNhwQ51huC4DgNsEjRwK2vDiTXDBMLXMbCpVNR/7I6rOV0NaBwLRvVz3rDkOv4FixFHOEYSG5HMWL3eANSpHoTdsi/5dyQtVNEEg2dldNgy4v97nFlmrIl4eBMXdzKksTI7W3/xMf0OUh8NkCJRTmXh0xuJMc1X/wUCxju93gxRJKaHvQqJqSsOVBdyiJx4umEmxrLIJnwB9r+gbM6FZjG6FK+ggsJluFSnCOkUgmkZQLgdywHUcT/P62Jspor55meEPgfQwJVyRNsKzowFEAyGjZXrutplShZFv7HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QEP8+JThITTWJeb3AXNN7iCfUhWu5MvnQDU+55VclbI=;
 b=YTghn5wiaMW4L+AeDQzAfkmgTKwwAhymZPPo544FtpBUZPCagjd61plJYGxUpUUMjABFiLCHZNj8ThfgXKUIf0hH7726jLP4nmiYMxN6aRy48ZFXt8VUMcRaTvKrXgDK1ruAAvCzGXEUJA/7RtTLQ6PLNdmKarm7r2J/OA8uTfM=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by MN6PR04MB9431.namprd04.prod.outlook.com (2603:10b6:208:4f6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 08:12:16 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::ee22:5d81:bfcf:7969]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::ee22:5d81:bfcf:7969%5]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 08:12:16 +0000
To: hch <hch@lst.de>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Eric
 Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck
 <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>, David Sterba
 <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker
 <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Thread-Topic: filemap_* writeback interface cleanups
Thread-Index: AQHcO+1GxDsb984h8U6EnOHXlipe1rS/ulIA
Date: Mon, 13 Oct 2025 08:12:16 +0000
Message-ID: <bf280a12-28b2-445a-8ed2-cc63d4c57a36@wdc.com>
References: <20251013025808.4111128-1-hch@lst.de>
In-Reply-To: <20251013025808.4111128-1-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|MN6PR04MB9431:EE_
x-ms-office365-filtering-correlation-id: e519457b-60e8-4a7b-6acd-08de0a30392c
x-ld-processed: b61c8803-16f3-4c35-9b17-6f65f441df86,ExtAddr
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|19092799006|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TnY4T2VUQWY0MHAvY2ZMZ3MxbzVkVk5IcVMrVGJZQzNmMU4wR2dUd2FZYjBU?=
 =?utf-8?B?eXFYbkJFWldkdWN1TDJEU0VjR0sxanFhVEUwWllmc0dLVXlCd0lTRjFEcEpQ?=
 =?utf-8?B?N0NUMWtGTTFJb0JGZm4rMEZJaUpGSTVucVJqN0dZNFFRb09LY0k4eVEzd0hj?=
 =?utf-8?B?djRtdmtnUGUzQjg1aHlnbFZiVG9NdUhPUi9GcmVIZzI2RWI0MDBraDNPQ2tP?=
 =?utf-8?B?emh3em9QVy9PTm85M3d6bVdmT3g1MFRQL3pVMVJpMkhBOG15WFF3VjRTcS9a?=
 =?utf-8?B?NE1iSUpkZ0R3K290SWxZSG5peER3a0tzbXBZZXAzVlBXcnEwTFJWSEZoaXVq?=
 =?utf-8?B?WE9waTc5dDc0NzJYMEFDOHlkR0xVR3RZckM3V2I2bFhDTWhSNVNGaWhsMERR?=
 =?utf-8?B?dk9QUlpiTDhvdHlrVkxkaGNxUEx4d0tNZHM4VVlzZFFJZnM5bGUveXl1UW5o?=
 =?utf-8?B?MHc5eDFyNVp3dnhaaDFXclIwa201bzRHOVMzenlYZ1A1UzRJVmltYTVRZmVh?=
 =?utf-8?B?SXF5a0lWb1BScERvek0yd1RSRXgxZXBEcVdxR1ZXME9sbXkrNEtCSGFwMzh5?=
 =?utf-8?B?UU00YnFwRzRHTHI3d0k5K2VPbTJDamhkd2VBeHJZSTZMV3RFUSt5OU9GVGd1?=
 =?utf-8?B?eTR5NUJZRXBGVkJ1M2dLeElzdEk1bC9vMVpIeUpRRW5sOUpmYm96T2EwSWIx?=
 =?utf-8?B?VGt3SHdBNTBPdnU4OXFwTEFwUDlkZjRFWENUR2MzcStRT1RLSlpZRTJNS2dL?=
 =?utf-8?B?RjBISzgwR3BTcUM1MnErYmVKY1crK1pndTRWWjAwYzdoU3BINlBCSzVnY1dH?=
 =?utf-8?B?MDIzYXR0ekR6WXdmYS9JUldETlg3MFMrdnNFZWNlS2VzVFBxYTR5SkNZVzVE?=
 =?utf-8?B?WDRjTmxkS25XZlZhL0FPdjZWTy94ZEl0RStGSHpDT2RrOW81SlNlQUczcWpQ?=
 =?utf-8?B?YU9NK3AwNTExSGY4N25mcDNsSDRjWFlieVRsa2xqVnZ5ekV3cmRmQW1MaHJ0?=
 =?utf-8?B?U1JKUjNXeVdkLzRLaHlTNEdXY3NzbnRmUHh0cFNBeDZ4VkNFSTMzZ2NtTDNK?=
 =?utf-8?B?ZlNJZGxRaGpQcnd0Ym56ZmpHQ3RGQXBTZElMSXRqc3U5UklYcjE5bFZnSlAw?=
 =?utf-8?B?Q0IrZERpRFZyTzlWcU1WWVRFelowUUlJanVEZVp4SC9XRFVzNldlMEFmU09o?=
 =?utf-8?B?a0ZNM3dvdllHUGVlWGVkZU5hbVpnZmxrd2Y5dVBDZnRtdmdtZU1TSnZYNjdJ?=
 =?utf-8?B?eFB2NFNUV0k4a2lLdzdSaFhYTTY4U2ZZMU41SUNYemtoYmxBSjkrc09WMkVk?=
 =?utf-8?B?QUJ4cFlPd1QwSk9tSGo5TFQ5MXFCcmJjeVp4ZG9KTHpJNGNXaFErNFA0WHVE?=
 =?utf-8?B?QjV3UGJOY3lzZ3c2YjNwNXQ1bDRXRUVjVE1od1pJekhzZ2p3d2JXaldxVkRM?=
 =?utf-8?B?S2oxM2hiaHUrdndtN0N5QW8wVkc4TVhpUmNNeHNNMW9sb0kzcFpORDNsU1NP?=
 =?utf-8?B?MkJyWm1XQ3oyY0xsMkhDZm5uamlLWFBydk13YjlaeUdsR1M4b2FlUlRHdW9M?=
 =?utf-8?B?TXNzczI2dW01eEJXNFhkZTAralRHSjJIM2pRY0tMRnBOMUc3ejgrN2hWRU5D?=
 =?utf-8?B?S0ZDTWdYckZKVHMrZ0lNRE5EUUZkekFmK0ZHSXhtRVZUL3lpWkdqY1VNZ05r?=
 =?utf-8?B?aUNPMzQyZHNBeDVCSDFyVVdpY1kzb090NWpHUmw4NXM0aVNCdTNsSW5oMXh0?=
 =?utf-8?B?Z2R0clR2YTBhVzhNME1WVXNKZVFuU3NhTnZKV0F0blFaNjFBSjQ2SjlucklP?=
 =?utf-8?B?NHFtSkVtSWwvQitoTW9MNDcxSUZTck0xRm5hOU8vMFJNUHNKRTg1bEpTT25v?=
 =?utf-8?B?VlA2WEVRNHZaMlFrVng1OTJ0V291QmJzQm5rZ2JLSmNFN3l0aFJRTHhyc1d4?=
 =?utf-8?B?d1VjOWM2ZFJpWWF3cG5lemhqVE5nUC8wenErMzdmQW03YWZJNWdNVDhOVnV5?=
 =?utf-8?B?VXlJS29NZ0Z2NmRld09xQkJlNzRkZklQU0s4YS9qdzFERjJOd09yN1N1Zjl0?=
 =?utf-8?B?V3N5RzdPTkpEWXVqQmpSYWdxU1BiYmFOY3VGQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(19092799006)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHJaR0tVd3VvWjJ0aHl4N2dWbGM1U0dWNkdaQ1ZmNytPcWJzMXQ1c1hOV0lF?=
 =?utf-8?B?T1FhOWNmRGFEN2hUZmdvUFdwUm50Sk9jR2tWT0NFYUp4aFgxR0dlTmw4Zm1h?=
 =?utf-8?B?bjdheHpnMkJ5dGsvSCtORDA5SFZacjFkTkhJRGRHR1BPaFArZlg4aVRGL3VU?=
 =?utf-8?B?Y2tHSkkwbjViMUNuTk1JelBaWTJkN09JTFRZWldrSEp1NEprQ0JHZENMNG1C?=
 =?utf-8?B?M2NLVUVmVGZFWFcxMDE1NVpqa3daYy91UDJML0xSOEwyU2pyRzlBb0t5TUJW?=
 =?utf-8?B?MjJzVVdBOE1Yeko2OEl1bTFWcVVIcDd6aUwxWERWbUdtRGprbUYvcEI1RG1Y?=
 =?utf-8?B?MjBTanZaT3pDa3hmYkpZaCt2VHE2bS9SVVl0aGJPbmlJMVU1UU0weFV3NEJS?=
 =?utf-8?B?S3VBM2p1cktwdVRIeE9TRDZmL3B3cU5GSWo3Tm1JVEJmVTh3U3UzUG1DQjhX?=
 =?utf-8?B?T3p1Wi9DbkRUOHJ4K3RlNDUxaEx4SnVnZmxZSjgySEdObTlrWVZHTUpMT1Vm?=
 =?utf-8?B?RHM3NUtNcEROSlZuakhCL2dIT05QdVBLSm1lTDRERERxSVBOekY0Yk5kazVw?=
 =?utf-8?B?cDA2N3E2STdYNW5WeGdwT0YyVnIxcTdDWTBvQmZEQTdZd0RicGMyWkl4WURZ?=
 =?utf-8?B?L3RkYi9zVnR4Y2d5bFg1UEdQblMxd0VSSEhxSG82Q0NCVitZTDNEck1VdFZh?=
 =?utf-8?B?ajRzVSt0V0htd0F4Sm43QW9KZEVGSDFwZWdiSW9zN1k2NkdPVVJnSmY1VEU2?=
 =?utf-8?B?SXZ0ZHRuclBCb3hrNUFtS0J0Q0lTbmZuQTBHUS9DcmhUKzZTVlNwYlcwRzdw?=
 =?utf-8?B?Y0dqY1drOVpZSDNVc2UyRWdjY3c5Uk40dHlEUXNnZmozOVhJT3N6akhaeS9H?=
 =?utf-8?B?NFA1L0pXclFFbzR5Yi9qTnJpL1dXclpJYXcyZGUvVW5mT3BEWFk1eUphL2xq?=
 =?utf-8?B?dG90SEVLWDRTTVo3Q3JGczJmU2lEdzR0bnZhVmJUajRpNGc2K1FUZVV4N290?=
 =?utf-8?B?UTd4NUxyamtYcEx6ekRDZjVadGg0Z3NjU0RJa1RBYXhraGEwZTlnT1lRQmtm?=
 =?utf-8?B?RnlCZG44Nkh1U3JJRThSYTJLWlovR1hnRHVMbVVPSHRXd2FGcExZTTZqbzI0?=
 =?utf-8?B?dzdvM2E5NzN4T2xYVmwyTnZkUVoxa083TXZFckNyeThZNlRFcHJPT054eHR4?=
 =?utf-8?B?UjNsS3RTYlZrTmJ2QzU1ZjFOdlY1anZGbEFNQXFwSDJUKzYyT1pqdTJSc2ti?=
 =?utf-8?B?NXZ0L0tuYnBFY1Znc1M3UjlXMGtTaVoxZEVsQmsrcysvSnNxQTRJbEpKVzF1?=
 =?utf-8?B?eGtPVkJvTGo3OXEzYUZaUUJyUXZ4WGJQSnozL1NYU1FrV3FDUXNyNzk4MWM3?=
 =?utf-8?B?UXFsN0IxQlZzMUl6UExjdTV1UlVxVy9CRzlHZkFvSllkaFBkc2ZrWjJOeS9L?=
 =?utf-8?B?R3B4QWJzNEQ2VjQxRS9LWkxhcXFkR01Kd2tUVE9TWFI3QkluRTU0anhLWjJt?=
 =?utf-8?B?N09qWEQrdGk1d2NxeXVka0kvNjJyNlVqcGY2am11alJnUmNsTHlxcGYvWjQw?=
 =?utf-8?B?VjhFREYwQlBnakJ0RWVwSlo5NWM0b1d2RlYzNmIyNlYvMExpZGJZZS9adUYr?=
 =?utf-8?B?YVVFaHZhd0NDaDdTdDFtM2JKUUdpelVPeDB0RUZ1MnZRVjU1VzRPYldydGhX?=
 =?utf-8?B?bVEva3EySzN1eWpxNmtJMmZQK0tNZTgvb1RHN0F6NWMxYmk5eWI5V3Rid3o4?=
 =?utf-8?B?NW5LMWhQNjBQOVluYmVQbk5qTFJob1d1eXNFRjQxK2xJcnJkMExUdWxMc2Nj?=
 =?utf-8?B?WEZtZEE0bjFxMTkzekw2QzdQWjlMWDE1NGlmK3V4T0VWUFdtWUNOMEZkT2lN?=
 =?utf-8?B?a2pnR25lQ01ORDJ5anhZczdJWHZvajUrZVZwUlgwRUM0RmFJTGk3bXVEZ21O?=
 =?utf-8?B?WUd5aFdxaklJbWF2TWtpR3NmZXp6dzVldzBsT01iNTlpWS9jY1ZVb21vUksw?=
 =?utf-8?B?TGZ0bEUzNnVnN29KYTV4YzA5eWNhRzdEVEgzdGQ0dHNPbGVMRHgzUzlxb2ha?=
 =?utf-8?B?NXhLU25LOXhtMUlXSDNUWEdDL1laeW5oemU5a2lGdGVsUUxxSWJkamRyTEVS?=
 =?utf-8?B?ZHlJTXNqWU80bHVEYWhJZVMzYkVYK1AxamJZakJtNVJpdkd6RHpIUWlWUlVi?=
 =?utf-8?B?VWc9PQ==?=
Content-ID: <2BC2F70E63BC6F438001F749882B65C2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: znshNhAWrtE/QXK+7mhRwLVFn5kCJXkc1OQ7J/3EGmk1O+jQz31a8QqywOSksX7dp75z/JqBV+mPiMbgSaNNv3f9rwizXjwmIkxY5bKtIzCNjYi8tgZaB4IbrcgFkJBvlzjFjLOAdMcF2zWggRHQDZ/Z6tYSBC5z6vdu1+cfYz8cuqkkKwoNIvAZIY5qWOTIKB/M1+gavUUHX6WVZMa31kt/+w+mSjz04srlLuOIhUoSbOrXEvMviRoeioR7h/Fi2/vd44aUQPE2bjFw5CwvCeGFrOpDkLAjbzevFO6AKmBalPKkbgDYaQ1ohzSjgz1x+RImfg2eRddkxDXI3pUJ+dMkFHHYuwjr/Crv0bZxx+pgfjOaQQjmLEjBjtsK2mC+H7p08AUM74wJ2xPao71/Kt0UzGPvsgNq8ahX3BAZqL1PA4vmEarcSS6ojIwDlpq+P/YTMNS84eIzgVSSWRKtwScj4Tfee8G5U2BvMzsnmQYEEvMizNWM/zDepmUlMUBqtMpn32uCEPlO4W8Grxe3CsChlvX39B7b2nNj8J+6OQmhD85cXRpes1LV3WrCFXWhy34pG2Llp2/9uPsbdArx1NLO+nTrG+/CfYXy1AJU6yM475XwyYUb15TYrWWPAW93
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e519457b-60e8-4a7b-6acd-08de0a30392c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 08:12:16.7013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nvjwVE2GmsGa0CWZPhZGKCaDSt7scdAeGkK0ZIJ7soXYvJj4jH8fPhG0NGgYiPmONSy5KvQtK30TEa4PRPJt02NQo/ii2uN///v2UmDUkl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR04MB9431
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/13/25 4:58 AM, Christoph Hellwig wrote: > Hi all, >
 > while looking at the filemap writeback code,
 I think adding > filemap_fdatawrite_wbc
 ended up being a mistake, as all but the original > btr [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
X-Headers-End: 1v8Duk-0007R8-RP
Subject: Re: [Jfs-discussion] filemap_* writeback interface cleanups
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Cc: "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "v9fs@lists.linux.dev" <v9fs@lists.linux.dev>,
 Josef Bacik <josef@toxicpanda.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "ocfs2-devel@lists.linux.dev" <ocfs2-devel@lists.linux.dev>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/13/25 4:58 AM, Christoph Hellwig wrote:
> Hi all,
>
> while looking at the filemap writeback code, I think adding
> filemap_fdatawrite_wbc ended up being a mistake, as all but the original
> btrfs caller should be using better high level interfaces instead.  This
> series removes all these, switches btrfs to a more specific interfaces
> and also cleans up another too low-level interface.  With this the
> writeback_control that is passed to the writeback code is only
> initialized in three places, although there are a lot more places in
> file system code that never reach the common writeback code.
>
> Diffstat:
>   block/bdev.c            |    2
>   fs/9p/vfs_file.c        |   17 +------
>   fs/btrfs/defrag.c       |    4 -
>   fs/btrfs/extent_io.c    |    3 -
>   fs/btrfs/file.c         |    2
>   fs/btrfs/inode.c        |   52 +++++++---------------
>   fs/btrfs/reflink.c      |    2
>   fs/btrfs/super.c        |    2
>   fs/ext4/inline.c        |    2
>   fs/ext4/inode.c         |    6 +-
>   fs/fat/inode.c          |    2
>   fs/fs-writeback.c       |    6 +-
>   fs/jfs/jfs_logmgr.c     |    2
>   fs/ocfs2/journal.c      |   11 ----
>   fs/sync.c               |   11 ++--
>   fs/xfs/xfs_file.c       |    2
>   include/linux/pagemap.h |    8 +--
>   mm/fadvise.c            |    3 -
>   mm/filemap.c            |  109 +++++++++++++++++++-----------------------------
>   mm/khugepaged.c         |    2
>   20 files changed, 95 insertions(+), 153 deletions(-)
>
>
Looks good,

Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
