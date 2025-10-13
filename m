Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6E7BD20E7
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Va9fU9PKUwjszuEi1r9ZuY5/qCEhvC+QRKqnsqM6HWg=; b=Ld4VazXc1MGY203xVXYTHlpO6f
	ihGdWFFFWSP2PtIqxY6oH+lYmA5NcLvCgyPbVBD9mpVoTddDRfcsodA1tGHWB9pSOudR2RO8iYV6z
	yUGGNKauKr0ZB8sFPnOgHYDMVDJxjE3STdftpG4vHRJi+2ouFqT02JEO0p71ag0CmUgo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Dtv-0007uC-R0;
	Mon, 13 Oct 2025 08:27:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=374750ffc=Johannes.Thumshirn@wdc.com>)
 id 1v8Dtu-0007u0-Pt for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FPVR1nUeEWXW9EoSeTg8tQKebhgnvaKmQuI8+xfVyXE=; b=meRP/HlrS8LUUr1nAu6WWWH+Gd
 QK6oIRlZO/ePqDAqiz30SfvEcyGHOMXf4kJY86jqdi2UhPhS5aCMg5EWLgA4A/0GLeEPW0albfR+3
 clM//cBwtoDMKoKnl0d7xjmfqZOYqRSRkHZWdTLVqHggcNC24+S/Id2WBG3PwxoL30kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FPVR1nUeEWXW9EoSeTg8tQKebhgnvaKmQuI8+xfVyXE=; b=k7AiIGZN2MTYE/6OrwbhwzCzHC
 3iCR7HuEiHIkF5pi6kLj1dY54AJYOqqyeLZWOZWlFgtct28eMzabxSUk1YT4hfWhegTkf5LgwDrTg
 2UmCiPl8lAHMMw0V4zQnSnf8eDDSD23uA6JeueaVHOhVldKaIw5UKigodqrMzLgC8MIs=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Dtv-0007O5-0D for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1760344047; x=1791880047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FPVR1nUeEWXW9EoSeTg8tQKebhgnvaKmQuI8+xfVyXE=;
 b=XYkrwKUjJP6n2j+9jKq7DtLDD8DKNJN/fsXcIuDZnPpkllzZg49DgjxV
 2PmWNNwSQRhGJBhShkX3AQiCsg3Mha9UxHCxKvyNfsSE/nA908PYZqtKg
 a1wQY1AcMjkilm3OmdIaUthc+o2WWyVFp2V6zudZodxOk2mhKle+iL3wO
 67IX3Aw4QkPfE2OyB6FaopRZV4+PDMMsgC/LEAImPyRT+ixXd2jtUcqCP
 T9CBvcLddPF+0Aweil/ht3vj3wplmvBKHuOteqkH7zysH0lo/mIhfyy8L
 5cKhmeiqc+emWqabW3fB3dUD1kCvQPyyQTHN8KAg1AFyAkAZ0mI3PZjbA g==;
X-CSE-ConnectionGUID: mjLt5jS/SCy46j/svJ74BQ==
X-CSE-MsgGUID: fZV5sROBSNmtOIdbaoks4A==
X-IronPort-AV: E=Sophos;i="6.19,224,1754928000"; d="scan'208";a="130105619"
Received: from mail-westus3azon11011057.outbound.protection.outlook.com (HELO
 PH0PR06CU001.outbound.protection.outlook.com) ([40.107.208.57])
 by ob1.hgst.iphmx.com with ESMTP; 13 Oct 2025 16:11:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aW797UXdT0uesQHvTzfH2rUhBiKsTrweQuoRDp6gLXzZMSPUyK5f6uDpj/VptapVhAL4+VGxIPFO3BKan+VypcYF74OjhHYB0GUoVLFPQHMki8d1DELIVD6Rs79ytyvKY6BSj6HTxbH+nAu5vPMuXNHRxHN/ZgZzlirCRIWXugObpPbI4iuxErmZX7gXEIFK2UW13kAag3MyHosPmJYzXDcCgxd0y9DXkB14J79TwUUyYMDG25X/NRgh6PCqU4n8uWzAzIg9D16sH2GzMh/+d+oT1RRT3oDfR3Ud4fQP3oOt1DgIbm86xE9qQuXjqZt22k7OCwFygm6l3x893x2cLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FPVR1nUeEWXW9EoSeTg8tQKebhgnvaKmQuI8+xfVyXE=;
 b=GTUCZ8xniXA3pmO0K/jTif2KaHmmCxWZ6QOqZzIww0P4qlqY1njsxkITOMuwOlV08U09VMbTlRRomV1rQcxxNGBxZCgzdfM5bRVT1sTIcneyL9o0CMOtPFUWTcUYbTrV3Kpcdk/WjwVDVC0HAAeJj0xo0ulNDlCCyolNFL3g5BvBIO+tHyDoI4np0GEdD9j2DijExFbC4dJI6yFWoi9DjoqTHNior0RhNYgkTwY291JnHOf9DgMhyQzKYw8zIoG6j+mH+y5B/Kso4lqJBvLn/PpFs2YPn7JYN+oSQmE2rmyqYujgJ2fZA6VPhn50gpT7fK1mhFGmqnpRPy6wyBOVUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FPVR1nUeEWXW9EoSeTg8tQKebhgnvaKmQuI8+xfVyXE=;
 b=iF5ExF4IsRYu3TNpuKIjZ4r0l6xshQXJApYhQ2UM9s7uiOH73FtawQUUZdKVSYwnSMg0Dbxe3lRaROgBGzT1zgRHLFeB9LC2GfvBoiKYG+1EMT9y2LOynmVIhgXsDoXygjgtdbOdGEo/H9hCB27f7P4XmxPNd3erkRQgg5lYa8g=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by MN6PR04MB9431.namprd04.prod.outlook.com (2603:10b6:208:4f6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 08:11:35 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::ee22:5d81:bfcf:7969]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::ee22:5d81:bfcf:7969%5]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 08:11:35 +0000
To: hch <hch@lst.de>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Eric
 Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck
 <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>, David Sterba
 <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker
 <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Thread-Topic: [PATCH 04/10] btrfs: use the local tmp_inode variable in
 start_delalloc_inodes
Thread-Index: AQHcO+1dZVuRfbvE/kmu3xObSWGqYLS/uh8A
Date: Mon, 13 Oct 2025 08:11:35 +0000
Message-ID: <aae79ea0-f056-4da7-8a87-4d4fd6aea85f@wdc.com>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-5-hch@lst.de>
In-Reply-To: <20251013025808.4111128-5-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|MN6PR04MB9431:EE_
x-ms-office365-filtering-correlation-id: fdf32238-7f43-426a-456f-08de0a302080
x-ld-processed: b61c8803-16f3-4c35-9b17-6f65f441df86,ExtAddr
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|19092799006|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?YTJ0OG9rY0tVdWhkTDduNndyWHQ0MkE1RmJqdHhxNVJSUVMvYm1ld2dkSURY?=
 =?utf-8?B?U2ZyMW5QREhtR2w5Y25DWlFmdXFWZEsrbHNmR25NcjVENXljRFZTSUJtUzU5?=
 =?utf-8?B?aWhxMjE5WXhGSUFWM0ttSEliQzRJNThEMER4eHdLdUd6bE1YTEQ1V3VkK0pT?=
 =?utf-8?B?NGR0YUs2c2FWUDBWNDhhQjNYYVE2ZytMd2F6eFBPRy9DMGF0cjhOV2ZxUXc4?=
 =?utf-8?B?TksyVGpMUXR5N1QvQ0NNY1VvS2NUTkVyVVdUeFQ5WWN3azd0eG45SE1uTllH?=
 =?utf-8?B?eFV2Uk14ODl1WStRdjdPdytCSzlyOWxXYVFvSFloVVQrcjlNRmpibGE3MzJt?=
 =?utf-8?B?VTRZdmoyU1FUZndYRkgrc2ZidDYrNU9DOUFKZVdIamRvdEFXbFVZOTZJamh1?=
 =?utf-8?B?MVVhWkppeGI2YjNjRkxHK3QrcjB2VDZKYzlZMlpqQzhDbmtwb3pUOEFVVEw2?=
 =?utf-8?B?dGZoN1g1ZC9NVmpIWnJsOHc5WC92QXl3NWFrd1ZjU3Z4R3RkTkhqaUhCdFBU?=
 =?utf-8?B?QTEyNnpPeENadWMrT1lEUGdVczd0bThPVXlueWRINVJwdWM0RnMvTmd3d3Vx?=
 =?utf-8?B?eVhLcTY5K00rbWdhZVFxK2FJbnhkdng4NGNLbmk4OUhWUkZaZ21mdG5vUElI?=
 =?utf-8?B?V1R1RHhWc2M2VzB4aUExWmh3ZWNZeU9XUEJ4bFltL1YrZ1JpT2FxSk03ZlVM?=
 =?utf-8?B?M29sVVE2V0ltNFRveEkyK3pET2hNK0psdUF4RVBpclcxSmI0WmJ2UE1QV3JC?=
 =?utf-8?B?NzZ4QTlDSUVSMVRxTDJJWlljNlpTSmhFK1pyNmowS3JmdllFQXNNUko3eS9y?=
 =?utf-8?B?SzQyL2oyYWdxZStESWtwdGUvSzF1L0N6RDlCWDBvT0dGbHlrSDNtb1dib0M3?=
 =?utf-8?B?RHlmUXlUU1RTa05FWXRVRWQ4Q1Nhdk9DUStnYW1QYlJpSXFxYzl4eEpEcncz?=
 =?utf-8?B?SGxIdm81UEg1dGJEcDQ1U0tZOFNuSllzMjhkTHB3UDJEM0VHdC9qS3F5eFFu?=
 =?utf-8?B?S2JHdjJCUzN0UElCaDBUblZUdWNMY25HSGJ1Z2RYOGh6MVl3R3lXNEUxeFZE?=
 =?utf-8?B?L0lwQWNVczBBbTg1T2JNbkxZa3RTc2pqYWlKL1pOL1pmbk5WNkk3b2NLMHRo?=
 =?utf-8?B?bHBDbGI3dVpFbTQ5NTE0TnBuL0RNZWVzY1VzVko0Mm5SUisyaEZXS1NmQWJp?=
 =?utf-8?B?WFgzVWFrRmxlZTFRWTZyRnpsRjFUTnJJVS94VCtQdlltTFhuS2tTazY0QVA5?=
 =?utf-8?B?aDJjNm42ejNEdENjaEpTcEI0WW96Um9zckVJS0ROTGFsVEp0SzNzNVEyamVP?=
 =?utf-8?B?R0k4TjZCd1RRQi9LdmZnOGk3UkliUlluL1pIQm40YXRZbU5DVG1iLzdYdkZh?=
 =?utf-8?B?T0xMSDVTbE5SdnlBMUFiYVM0dnBCaGl1MFNxUzV0dTN4bFJiaFJYWGxJNmpp?=
 =?utf-8?B?bG8rVFBuWHhWTURvaU9IbkVVTGZMTFBNUEVPNEEyOE1rQ0Z6Sy9CampHVVkz?=
 =?utf-8?B?bWpBazdNWCtSNjF4MHNldVcvQVhkSlVTUHZDRjdEZC83eXdDelkreFBhb3BN?=
 =?utf-8?B?UUlUUW1FWmhNMnVZc0o3a0hCS09RVUtkUDV1TklJbjhaSmFyZXdTTEFkVExj?=
 =?utf-8?B?d0F1L3pDVmVEbWswbUI4MHUyWkJzVUhEc0UweVZIdDl6RnBpbkhVd3dhUWxV?=
 =?utf-8?B?a2hZbWZBNTVoUElTWWN1ZGZRRHV3SVZMWGZndmhOZDRsSlM3ZTlnS0FTaW9M?=
 =?utf-8?B?TkZOMzJkZUxjWE1UOWJ2elJlTDRUbTA3V0M2TCszNUdPZ1UwZ2RnMVlrNDQ5?=
 =?utf-8?B?QnJKMHV0eUYrRjUvejNuLzFYS1B4dDZTNHErYU9yZlE4QlQ2b2hBcE13czdL?=
 =?utf-8?B?SldKTnYvUDFwY3Fna0JOcEtzZ1Z3TDlxMm5nRFF5anRyQUZXd2NOb3AydGxZ?=
 =?utf-8?B?Z093bTFlSXV3bmVGV3NxeDlxcTBYQjFzSyttSHd5TGhoWVRWSExlRG8wVzVK?=
 =?utf-8?B?bWNvS2xWNFVoRzU4NlNWb1FqUkZvbEFzTUhzM3ZkeTgxOE03L0E4UE84aUFj?=
 =?utf-8?B?YnY4d3pOWWNCQml3RlkwUCt4eDY0am5TdlNkUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(19092799006)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVFldFFHMC9ZUkVtUWZlc2lKZlduSzlldmhxamNGWUU3VEpaelpBa2xLWThG?=
 =?utf-8?B?U0lhekMzSk4xRXBaTGRHMzJlNWlNUXlDenJ0ZDhxWG9aazVINnl4T0R2UGNw?=
 =?utf-8?B?dXN2UjdyRU1vNkhZZCtRRGxVZmFGdk9rS0k3ZmZpV2l3MnBud0sveHUwVDEy?=
 =?utf-8?B?ZFhyemtXOXlRc0NaM0pkUkhESDNna3c2d0JXckEwcmkwazRLdTJxdWFiaFVG?=
 =?utf-8?B?ZkFmZmZPYVliQkExWm1JRnV4cnF4ZXc1aDNUVksrN2xrOWVKV09FMHk3NEtX?=
 =?utf-8?B?ZWxSQzJGWm1QVUFoLzJEMXkvU2lPa3R2Ym11TkVtSXZDUzMwRkIyQkRFZ3Bp?=
 =?utf-8?B?dXhzK3E2KzBLd2hZRjlUMlZjUFBRc1FvcXlQUU82TkxsOUdoZWpIUVNnRTFO?=
 =?utf-8?B?K1VoM1AvTTRkdVMrMXZvRldtaHlzYXc0Sm1zQ1htZ3RpWGVCTWF3eHpSYy9G?=
 =?utf-8?B?NDhocy8rdk14ejk0MXZwTFlFa095cEhoVWx0cVNiSWpCT1VNR1kwOTB2ckow?=
 =?utf-8?B?M2JvRFdkS1RYK2tJMzJvVEt5eG9DelpVMldoTGNxSVlCNjNUaVdTY1ZuOURo?=
 =?utf-8?B?N2FjZnJzaDZrZVVLeFRZSFRhTmRuNHViMTVjd0QvMVNEajZuWlVBakFCRDFm?=
 =?utf-8?B?bituQjNMNU96eFFwKzBDTjgrSzkxN3BQdlQ5NHV2N011R3FZTkUrSTVtQTlt?=
 =?utf-8?B?eFFiVm9ucnBldkErZlExSnZoZXViTEVwV244RExYc1VZd2RIdWVtVHJNVGds?=
 =?utf-8?B?ZFZ1MEltSlI0amRxb2RTb1V4dy9QcUR0bUswWG9SaERCS3lrdG1YRXpiRUpz?=
 =?utf-8?B?SytMeXI0RHUrYXoxM3lYWFJOSFkyNk9Ud2Ixc2FJbHRsVUtmTHJmSm5PMUhL?=
 =?utf-8?B?YjFBU20rcUNxZ21BT3JTODlFeTk0NVNVVEJseTd6bTZDSWgyZ3pIaEM1YlYx?=
 =?utf-8?B?Yk9SbHNXTjcvSnNtUzJ3QytFVTZlb0g3bFd2bE9walNIaXFDeEtQTkxKbWN2?=
 =?utf-8?B?dlc3WDA1cjIxeGZQcU5LSzJSUzBZZXpSaE45bS9QVXQzd1V6NXI1eU5NTmRw?=
 =?utf-8?B?YXpQSHAxWi91dTZWZDBVeUZ2bXlialBxTDdRNnpRSEZBWHpWVE8rbHIvUTJi?=
 =?utf-8?B?bFJ2NjFkUVNyMnByUTZ0UExoRUlRUjZFY0VLRWF3U1oyNmxJYWVBeC8wOWZN?=
 =?utf-8?B?UW1JY1orQXhuUGs3WE1waU9wVk1WRW95b2ljbG9iZ0k1bjVzRXNJS1FmaFVs?=
 =?utf-8?B?ZkNZWnpWa0ViQVREdEl6aG5zNEJteGhUcEFjMTVjeS9MK0lDWVpHVWZ5MllY?=
 =?utf-8?B?UHNLQXUyMExROHpRMkd2SWowcEVEQXlXa01GU0xmaXNrRmVPbngxS21KUGIz?=
 =?utf-8?B?N3dVaWlwVkIwdXQ1QW13OW1US2hDaEk0YWdzYUFSTmtzOTEwem5kWDkvK2hm?=
 =?utf-8?B?RGJIYzhocHZFUkZFT0tEMnNhdUtReEtnL3JJSHoyWmJSQXZOYXQ3c1NOOTJY?=
 =?utf-8?B?WktkbXh5YWc4ZTI0VVo3clI3ZU9ITkp0cnB1U3dxMGNzTjN3THJ1N3VLVjA1?=
 =?utf-8?B?YXFjVkEwRVBGVXJjcHR4YVNxRVAwdERubGwzTTJSUWxUd0E2OEFOYlFtMlIw?=
 =?utf-8?B?MVJ1UU84M3hXU0JxbkxWTHM1OEd6OVlGdXRKMlZFMjZRc0pzTE9QQ2ZjelBy?=
 =?utf-8?B?T0ZBUStTMGZmbC9iVHFZUFBNNFpzL1VsakxvcDBuRTVwTGw4VzRweGowZGRG?=
 =?utf-8?B?c2RZWFdqVUZzNzVCRXltaW0zZDVIY3cveHI1ckxTd1N0aThpMUtFbFNvbjVT?=
 =?utf-8?B?ZmtncDFNZkhkd0N2NXN2Tmo3YkxCTWJhRVdIRUFXYUJxV3VQRWsxYmFHT0pH?=
 =?utf-8?B?dnpGeGFGODNWeGZXQklSNExLVGJUK0tlOGVWUEVjelNWZWVHM005NHU2WW1F?=
 =?utf-8?B?TmFIbndBY3JWSEtFU0hEU3kvZ01ucGZQT2hUUUUxZi9XNlJvK240d2pTaEdh?=
 =?utf-8?B?bktEbnNLaFhaelBYNkxBcUtiTGNEbDArYnNET1ZOVHg4dHE2NnoxMmVUaGZk?=
 =?utf-8?B?b3lrRFpDeEVDaVdKRXBsSmtNMDFjNjNzMWQ5c1RoL2JDcTExL1JGY2Nyektw?=
 =?utf-8?B?ZURmT3BuN2l6ME9BcXFrSWt0NUl3N05EYzQ1bWFoaWc0NWw1NHFGVjdFR1VF?=
 =?utf-8?B?UkE9PQ==?=
Content-ID: <E3AC73DD425CFF40B13D242FCA992F16@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: lnr4fz6t1WL6ODJg4q/uPquvR5KP2TRXmo8Sc9XC9O8KoLLL+/ngsekF9XfW+YEV/3AbsNGwvoDTKp4uO3F0EtclJjJ0lK4PMA7MdwsWGROI6ekkdOXEPXJBfYePTwLOiyDL8eqTJcFFQj09MkhedmWU4J+Z/bB/rvuYnKRzwCmwn9qyj5AbVIeVPv0Q6EmGAsN1NQ3Vno+qjBOCvMtWWFoGy5IaMil5ZnYwkVhV03A24u8v247Lc9LzumkylZxdHsxiMxBdgeXonl9FLvFmE0xQTsyKvTQrdILSYfJKjPo/WG/ceq8iD+cvO9VqG/mgLDY25Euq3jurue+XM8yUii+RefAiYj51tTJrYEXJy+BKX1sUwB0an326DGX8fkpvBUElsA5JaT1S0SQkwh/pqfswTuAkwd5NTaXAOBJ2Nf2lrCqijbx7c4uK3da/jNBhlKH/G9BsUYzr/9CKQBXRMmTwzXqEinrl72p975WpLQ3Izm6vEkGkR4LUM8L0kThDBI/B5c3ePd4bYJNCZ4uHwd9WhiPK2IoYCEI0ifcA8fUb9ovsws1MtTphMcWbqXWfzul/kmcKHhhUnkW1Wtgf1kr9KXyech75ZoX7rU4ohwB06Z7qUrwM6/romoeMYplr
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdf32238-7f43-426a-456f-08de0a302080
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 08:11:35.3061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /+58TAcGItL7X4ro9rFgnk8DRWRh9rF3FwERdKZdiNjWgPyIUa6VFfNFCvDfxo3ZEz9FQTVy7KPVVMgwkoiaj3ZHcbfgsdVK1qDpYqEeIWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR04MB9431
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/13/25 4:59 AM,
 Christoph Hellwig wrote: > start_delalloc_inodes
 has a struct inode * pointer available in the > main loop, use it instead
 of re-calculating it from the btrfs inode. > > Signed-of [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v8Dtv-0007O5-0D
Subject: Re: [Jfs-discussion] [PATCH 04/10] btrfs: use the local tmp_inode
 variable in start_delalloc_inodes
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

On 10/13/25 4:59 AM, Christoph Hellwig wrote:
> start_delalloc_inodes has a struct inode * pointer available in the
> main loop, use it instead of re-calculating it from the btrfs inode.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   fs/btrfs/inode.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
> index 3b1b3a0553ee..9edb78fc57fc 100644
> --- a/fs/btrfs/inode.c
> +++ b/fs/btrfs/inode.c
> @@ -8744,9 +8744,9 @@ static int start_delalloc_inodes(struct btrfs_root *root,
>   		if (snapshot)
>   			set_bit(BTRFS_INODE_SNAPSHOT_FLUSH, &inode->runtime_flags);
>   		if (full_flush) {
> -			work = btrfs_alloc_delalloc_work(&inode->vfs_inode);
> +			work = btrfs_alloc_delalloc_work(tmp_inode);
>   			if (!work) {
> -				iput(&inode->vfs_inode);
> +				iput(tmp_inode);
>   				ret = -ENOMEM;
>   				goto out;
>   			}
> @@ -8754,7 +8754,7 @@ static int start_delalloc_inodes(struct btrfs_root *root,
>   			btrfs_queue_work(root->fs_info->flush_workers,
>   					 &work->work);
>   		} else {
> -			ret = filemap_fdatawrite_wbc(inode->vfs_inode.i_mapping, wbc);
> +			ret = filemap_fdatawrite_wbc(tmp_inode->i_mapping, wbc);
>   			btrfs_add_delayed_iput(inode);
>   			if (ret || wbc->nr_to_write <= 0)
>   				goto out;

If you have to repost this for some reason, can you rename tmp_inode to 
vfs_inode or sth like that?

The name is really confusing and the commit introducing it doesn't 
describe it really either.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
