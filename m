Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4D971202D
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 May 2023 08:38:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q2R5F-00048o-Nu;
	Fri, 26 May 2023 06:37:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=5036c86fd=Johannes.Thumshirn@wdc.com>)
 id 1q2R5C-00048g-4d for jfs-discussion@lists.sourceforge.net;
 Fri, 26 May 2023 06:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d8igsnWXUxudeemjb4zYLkQtLHGCiFz8ndPIQ0jardA=; b=Ombmt4yJcabvWN5ZC9WsqFpwDh
 5eD1KdRAWjMVRYetUKGe9eRq73W9qXVn4KbkvnOi5XeMD+UD00Q2a3D2Zg41gTIzhDzeMfUEPQ3mD
 dIWisugPX9I0AuSIG8K2XzG+oeOE/vt1rYKWHYX4BMfECexyYCsINbuj4IX51Mi1M0CM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d8igsnWXUxudeemjb4zYLkQtLHGCiFz8ndPIQ0jardA=; b=VJzzDZky6I7JNQ2N6Et5vKjf8r
 2p0lAKWoyN4neB3+C0TA/fOe6oUCzmbxgKI6OauU7hSxMhKKgYNzBws4fGGBC43mYvh3dz43pd3//
 gtQuw+AW8NGMRfpT2Ri6pCjE1JHM4cGLc2AXDVMkUm8ZYVacyh1NWjFf7WHL4lGb7shA=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q2R55-002yi4-PH for jfs-discussion@lists.sourceforge.net;
 Fri, 26 May 2023 06:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685083064; x=1716619064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=d8igsnWXUxudeemjb4zYLkQtLHGCiFz8ndPIQ0jardA=;
 b=OMh3cg/PXOOcB/wts2IORrMa7ZTxjlJ867MPhRVrIPYJzOeDf4Kkgcon
 bpImiuQZQxusNY/v2nJs594obckzRl7QHOhfAH4m4uPwp4m4zqNpWpcuT
 o+6uotj8g654hEgVx/N6k7GcJ2xVdFqDDXA7f1W79L9/asU9dXnICSySb
 i6E0qREUtIQ07tqIucQZRmtWnCy8QzSbx8yjECOykbMj7t579a61Ka4id
 ipyJi4XtQQzI0iQz+pR5xQf7pFNKZXyoe/n+g0sRIPMZNRgVsvFdyZofq
 ZyLeyNizw4eUtl05EulfpVyZqhQvZG/9qonMhU7Hexqm6eJlsrxxHgqPE w==;
X-IronPort-AV: E=Sophos;i="6.00,193,1681142400"; d="scan'208";a="231622407"
Received: from mail-dm6nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.171])
 by ob1.hgst.iphmx.com with ESMTP; 26 May 2023 14:37:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cid4LuO53C9Yt49JtGxAthU4MhPoEexYKpfTpaj+C76ZE+jKYb0SNtgCwEYqZuhx6m/unyfn+Z7rlJJe/xL+zoCMsq5EyEzs41LF+ooRYV19PznDwuEOMIfy6Eu5UwN2TO7PjpdVt0TcUe7gIvoIIU7138t0/kG1yQP+GKptWXA50YU/zD6Osb0ia5k8WIi5Te+6ydWl6XPepMk9LpjhJzybp3tiPTityjNJxh+ldt+p+2dhkFy/uIkWhlk8qwr7Uyf6JHYlKEiw/BlhZZ2D10skSjTAB6gOhZk3VZw4AT9vZ323g1NSEancre5FHR9/S1forl1bn579rtZqqglLaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d8igsnWXUxudeemjb4zYLkQtLHGCiFz8ndPIQ0jardA=;
 b=Vtku+fWeXKOrolC/tfRVxl78EzZ2wZt9sPCjmznlIao5lJpm4PKo/emFVWF1Ub80D2sXDZr22ZK8Y2DYMs7B1uKW8i6u2s6W8OdRy156p1P2/tFeb/d8X91caLJmfjed2xwfGQQLx7c7GzFWrDOspRUelVERceZ6whpK7NJrZSPVPAh0zsM68TA4VKw0VNRqncmDj4WK8o91OnjColXXhv4kOtBaVPrq52KSV7wYiIxmcA6hd5yadvr/dNUnuJXg40n2GhdUgJsUxFWs+wCGXJOIN9gaXYOpjnHc5lOrB58sUEwK8Lcyo0qiFoni1wX++lcwkbG5bNpVt3bzLbJkXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8igsnWXUxudeemjb4zYLkQtLHGCiFz8ndPIQ0jardA=;
 b=xRvSAhx52TOzhwvIoledwZ0xUl80gTg5jMwQgHtXkzzVkKVNY8ZrQ6JaH+eCEdopPmkyojfkzTh6uvwtMwzN478LcdZnP3+xaSLsBD2cuziv+Af+PQspdA2ipMKkpU4f6rlKpOJX5loqnUycYIuwE75XQ1+M3rDXz2RvDQptYTQ=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by SN4PR04MB8334.namprd04.prod.outlook.com (2603:10b6:806:1e9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.19; Fri, 26 May
 2023 06:37:35 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f%7]) with mapi id 15.20.6433.017; Fri, 26 May 2023
 06:37:35 +0000
To: Jens Axboe <axboe@kernel.dk>, "dm-devel@redhat.com" <dm-devel@redhat.com>, 
 "snitzer@kernel.org" <snitzer@kernel.org>
Thread-Topic: [PATCH v5 00/20] bio: check return values of bio_add_page
Thread-Index: AQHZfN/AsiDj2VYjN0WoDrrCAoWRkq9pp6yAgAKXsAA=
Date: Fri, 26 May 2023 06:37:34 +0000
Message-ID: <efedff15-af48-31e5-2834-d8a879f1e6d2@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <3235f123-0638-b39f-f902-426059b87f81@kernel.dk>
In-Reply-To: <3235f123-0638-b39f-f902-426059b87f81@kernel.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|SN4PR04MB8334:EE_
x-ms-office365-filtering-correlation-id: de8ede10-e19d-43ec-b7b8-08db5db3b0c2
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7hXV9z4Ex4fXZOcfjl0cIY8IHjE8hkC7ouEIl4I4iCEDDuIyEsB0o5zVxvmPxTt5CRv0I/mDUD3m2gnvw+YAtyjz1/qhAPtLWdPQKtjikp/ww9TcWBafBxZVGP1xyp+HaPrt9o0y8O/q6RXXLW5UciF8po+ET/fEZJoQF3zB4zzsQRcVFIV60zwK4exsti8dxoAj3TaBWZNGexxIXA/9Zymy6T4MG5zLfXZSIC5tRTqrKqeMu6TZUPYr/xoLoAoJJQC0ZavSfcQFWTE3p5E30aJbl9Rgs+UPqPctA8SmYtlSf3Z/qo9Tes7uMm8BatMqqktfuytXVAzhpLrDx1XwtNcyp9/NMTIXhIKbMUGMRRm/2M0RslwMCp5T6MV+gXn4MB+SGEYP0xqfwyB1PY7w3kuqzE7H5BJlsoKoOuHUZ8R2d/mDrbXrUCl8TS0r/DpUd6H9MpekzKijD1ONso09V6i52GzTbrgtrASXR9uQHPvfCtcCME/E+Y9RsRD3kDmTdDu1T2VT4Y7L+JMZa6cOlhdfTrjjKEe/CRd+ltpY7rnKZaxbDfCBmTrhJwnVouI/+lDDsOZFNkKKBQXnCSvcbXHrsOZftO5/tokxPz2eHwmRH5R9ui3PO/Zo8yRnMA0Ir2cjZNI7CvX3A1RK7TIz8SiANL78VWIw3fKnCnZCKcUE9ht27vSCc6UrIvJf/PKw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(396003)(39860400002)(136003)(366004)(376002)(451199021)(122000001)(316002)(71200400001)(7416002)(91956017)(53546011)(6512007)(26005)(6506007)(82960400001)(36756003)(38100700002)(64756008)(66446008)(66476007)(4326008)(66946007)(66556008)(76116006)(6486002)(8676002)(8936002)(5660300002)(41300700001)(83380400001)(86362001)(31696002)(478600001)(54906003)(110136005)(31686004)(186003)(4744005)(2906002)(2616005)(38070700005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFRuclptRmxRZFZuayt1QzRRcGR2TzBHa3gvdk8xU1dlemdCcnFDUzdYYUlx?=
 =?utf-8?B?L2VpdW1IQWgyZWh3dG12SXJrWHl2OWhOSmFUdDlXUzRsQVpUa3RwaCtmckRK?=
 =?utf-8?B?cnBtVzRxM2E1RHIrNkN6bXFEak80WTRqVlU0eUhDNW9KVXdaUzJDSm1oZHdB?=
 =?utf-8?B?TWxlSHVwZ1FJVXNlNWxUWGNrTFViNFpMOGZ3bFplR2tBcDZCeG9uMlg3SVB3?=
 =?utf-8?B?b1lCRVI0UmFMRHpyeEg2N25TV1N4QVlTSDB2bFdwcGNPWGYwQ3ROVUtWOUNU?=
 =?utf-8?B?ekgxRzBvbm1RdURvRmc3c3N6QzBxazJ4RVJ0YlVNV3F1TDhWK3BHODFxSDZq?=
 =?utf-8?B?R0pVaS9QZEoxZVdtRVpyZ2VreVVzMm4rbXRDZ0x6QzdhRXZwdGdUWTZlZlJq?=
 =?utf-8?B?Mk9zWWk3alo4NzFQa3VJaTd5YzdqVVg1dWNjTGV0bENaMDNCMlNJeWQzZHZK?=
 =?utf-8?B?MFJrb2FUS1hnUlpCeXRSd0UrdkphSlkzTE4rc2NNbGV2TEw0ZWlGQVJmSlpR?=
 =?utf-8?B?ckx4Q3hsV0tBamxkNElpUHBveS9XR2wrUUpkTXpSTSt0UWw4d2RJRi9SME9B?=
 =?utf-8?B?MnNWc1B0a1ZmdDlhSTcrYWFBRTN1bHExS1hHYWlCWU1zcXAwUHNEOEhZbEZK?=
 =?utf-8?B?KzFkcHdlUjFoMGxrWG80VTVYOCs0QVB1K1llL2o0dUw2eDJnUFVsa0d0MjNG?=
 =?utf-8?B?dDB3WWd5RzQ4K1JoNDIzYUgrQllvbE80anIyL01UY3EvQUtqNHBITUdoblZY?=
 =?utf-8?B?OVloajBYNWNIaWVGc2pqTWN4VTluUVJESUg2UVM1enZmZzhzd21obUdGY2Er?=
 =?utf-8?B?cnZWS0xVem5QVitvdWxvL1pSV1BWRjM4bDlIWVMxa21JL3NVa1I5VjZzYVJV?=
 =?utf-8?B?ckcrbGp2bWJneUNkcXhiTmNJMEw5dGRDMjBiRStNZnZ0eEJnUjl4dE9ERklE?=
 =?utf-8?B?d1pvd0xpUzlCVitRdm5WSUJiL0ZTREtCbGRLUEhNOFNyRHByREhXSU0xRXFj?=
 =?utf-8?B?WGlHRnNNRkRjYy9LVjZKMS9NM2pHU3FKR3IzV0xPM3BodkxhdFhMM0FyYVIz?=
 =?utf-8?B?QmRwcTZRSzhGRlVXdGtRblprUU0rdlR4U3NhQ0lsM2ZobytmdWF1NHMvSURl?=
 =?utf-8?B?MUhFbTk0MThUVi80Mmsva1NZTGR5c3FqV2U0R2RTV1JkSThSVDhWNCtLZUsy?=
 =?utf-8?B?eXJZa09qZ0dVbWVDZkRXTklJMmxnU0F3NmRCbmxzd3FPbEtvZFl2SzlLeCtS?=
 =?utf-8?B?REZVQUFmMm5FWFdmblBuRzFNUDFyWXFDZGZBTEUrbnA0YVlqV21MZitKWHAx?=
 =?utf-8?B?STdPNUNmRzZhUVRDcnFVMnRCdHlnRVVwdFpPU3Uzd1RqRmZ6U05FMzZxRnk5?=
 =?utf-8?B?cnRzSmpyV1IyN3Z6UHhuUFF4cDY2YSs2ZmVGQWxiL0ZtSG5GOFVYeFYxQ1Fs?=
 =?utf-8?B?WWl1RCs0Zy9DN2FkZDBuNGlOSkIyNGg5UXl3Z21BM0lEOHprUk5SeHhrM0or?=
 =?utf-8?B?TXlhVDU4ejA2bFphU0ZvWTBENjJIWVNiSFhYTUM2a1U5cXhYMEROZU91VTB2?=
 =?utf-8?B?bmptMmZSdGVSdVcxQXJBN0N6eVJ0a0g2RnBCcDU0OTYyQUVEUlloV2dwVC9l?=
 =?utf-8?B?Vi9uaDQrMng1aEc0MG5WcWVoK2FwL3h1b0Y5bEFVM1NhYU83QUx2K2hiZXVT?=
 =?utf-8?B?Tm1GVmJEOTNkbVB6SjZOWU42V2V3cVNuQlViSkovbWNyTkZOeUFjYWlEQjNI?=
 =?utf-8?B?NWdReEtkSlBDd2ZLQ0NPSFlPZk9VSldaT3VYMm9DS0NxSmZqUjVFWXpqTWtR?=
 =?utf-8?B?ZVQxZ1RTWFZma0owZGdZSThwTkx3U0ZNVzJFWHF0QVU0Q0JHK2wxOWxmVGtK?=
 =?utf-8?B?Y0p6d210Q0Z2S1RLT0N2dGoxOTdrSUp4U1NXbElSVVRjM1RnaDUzVWk2UzhN?=
 =?utf-8?B?VlA1UXluUm1iTVlraUpaWnVkNnUwUnhVWWhzN1pRWWs3N096emo1clVwRS9R?=
 =?utf-8?B?L2FCQlF3MG91cWFjUXBac0J0dXFESE5LVVY3T2tJNEZPTkRKRm01c0d4ZWZF?=
 =?utf-8?B?c2dxTFZPUWFZNU1rMXlGYWxIZDM5cEZxOFlwRW5vQ1FYcjRtNHZNb3liMUVK?=
 =?utf-8?B?enJXOXhHVUVCZ0d3aUZKWVBvS2MwUDNPNnJRSkZVUS9HMldWR0ZkMXVIVy9s?=
 =?utf-8?Q?eLhZFqQJZEDu41J69pKkoT0=3D?=
Content-ID: <39BED69ED293A949991ACEFA085F09BB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?RG1BNTFMZHRBMlk4VEMzT3ljQlViRnJwSTlNL0MwWlB2b0lOVEthS3NldVhR?=
 =?utf-8?B?OTV2bUxIbmxVc2wyZjR5dFEvSmV5d0sySmpmMGN1Y1A1aXg1YUR5NlRDeFNt?=
 =?utf-8?B?SXhKRm1EeVE0WXJLUWNrd1I4QjNqOGJHYkk5WG80elFrNjgvVjZJTXp0WE1N?=
 =?utf-8?B?ajhHTWtGYjF3RkpBL3FFeU85TXZsWm5nZ2VDaFNYd1RrNVhwMTQxcXlqNUt1?=
 =?utf-8?B?amFrbjlSdWlMTmxDTzFYQXk1UEU3K1NqOGV5MzFIZ0NHR1VLYUd3OU1WU0s5?=
 =?utf-8?B?MmwybmloeEJSbCtRK2pUTkV2cy9ibGxHaHhTKzdENGVLY0RxaWt2Q3p0czYr?=
 =?utf-8?B?QzMvS2pvRWRFZWd0YWpvK2lKZjUzZmRXaWhBM1ZtRG1rbEFPOUlUcmFmR1h0?=
 =?utf-8?B?akk0aWNjbHY1elBFbTRoL09FMFdMSzQzSElzalF0RytEeENZSGRESWdrTFdy?=
 =?utf-8?B?UDJyTUxld2Q5T3paeUU2WTFuUkFvdXRzMTY0YjlISnlXei9aWmlUNjdkdzFK?=
 =?utf-8?B?anNhU0hGYWNCU2UxV2RWMzFnVmNmYytKZUxyM250eE5BemVTaEdGK3BZVHU2?=
 =?utf-8?B?YnJYZEpFZHQxQ3B4STFFYlZKL2FBR2c5WStabXhoWHVTNFVCaTZxNmFEakds?=
 =?utf-8?B?VU9hT0tTaThpY3B6alV2L2pRbERvUDVSNGhSb1QyUm1ESXVRK25RZDNZZjE5?=
 =?utf-8?B?cnErQkRuYkN1b1psVjJ6WHVzeWdIdHdkTEE4N2xlVTBEUjZDWUw2TTlXYi9J?=
 =?utf-8?B?dmxLZ1dlcXdmOHAwK1NqeExkazBBbTlod29tYmxYbm9ZaURYaGE1a0lvN2VU?=
 =?utf-8?B?TXpUTkd2aDRaMUZYOFIrSEd5d1U2YzVwU3FtSDhqWmdKMWFjaFZydDVQMGRW?=
 =?utf-8?B?YUZZdTlTYi9LSGU5TFlOeEMxd0taM3pjQVQwRmdURXJpTmpjblIyY3FlQWVo?=
 =?utf-8?B?dGFJMy9CUHJTcUpnek5ER2dxOUJIdG95dFMzMEkzSjc0YnhsYUlVU0NaRVdV?=
 =?utf-8?B?cDMzU3BySkZLMGlUZm1uNm9sMngzTFdQYUl1MitXR2xYWU5jUzhWUUNnSDJB?=
 =?utf-8?B?QlpRenFmYXdEVnlrd1E5QnJRa2oxRFI0L1NvUEhlR2xybVZWV2RFYmJFdHAx?=
 =?utf-8?B?bzRLK1BqQkVpZzFUUDkzWUZMWWRha3FnTG5yVDhuWU00MGtTVlRHWWt4UGFC?=
 =?utf-8?B?L3FtN3lOUjhRR2dDdm5pMC8xSzJMNnhvV1c3ZlpyRHhZVitqZzlhOWcwRWVz?=
 =?utf-8?B?YmZEb3d3VlNobVQ5QzgzTDV5OWNRVWlWL05saE9ZbmZ6VlMzTzZ0MGtRVTE5?=
 =?utf-8?B?aVUrVnl1U25SOUxlTFkyUStCSWVBOThpa3ovSTk2MGwwRXlCc0ZTMUVaaWdh?=
 =?utf-8?B?cEpyYURQRVBkb1lrZTV5d2g4YTJZaWlycTNFc0ZtK2M4OGFXVm9LZ2kyc2Z5?=
 =?utf-8?Q?s5xSVWj4?=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de8ede10-e19d-43ec-b7b8-08db5db3b0c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2023 06:37:34.8705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d31urnh5OevjNkL6btrm0+P8a5IaFd/NTACULLYaQYAf4ppALhCPsGyHBhT3UK9TDGIw2uCiM4D2kgKldMc+zW7p+d8rDUEfgVfKul+CFoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR04MB8334
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 24.05.23 17:02, Jens Axboe wrote: > On 5/2/23 4:19?AM,
 Johannes Thumshirn wrote: >> We have two functions for adding a page to a
 bio, __bio_add_page() which is >> used to add a single page to a fre [...]
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1q2R55-002yi4-PH
Subject: Re: [Jfs-discussion] [PATCH v5 00/20] bio: check return values of
 bio_add_page
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, "kch@nvidia.com" <kch@nvidia.com>,
 "agruenba@redhat.com" <agruenba@redhat.com>,
 "shaggy@kernel.org" <shaggy@kernel.org>, "song@kernel.org" <song@kernel.org>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 "willy@infradead.org" <willy@infradead.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "hare@suse.de" <hare@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "hch@lst.de" <hch@lst.de>, "rpeterso@redhat.com" <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 24.05.23 17:02, Jens Axboe wrote:
> On 5/2/23 4:19?AM, Johannes Thumshirn wrote:
>> We have two functions for adding a page to a bio, __bio_add_page() which is
>> used to add a single page to a freshly created bio and bio_add_page() which is
>> used to add a page to an existing bio.
>>
>> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
>>
>> This series converts the callers of bio_add_page() which can easily use
>> __bio_add_page() to using it and checks the return of bio_add_page() for
>> callers that don't work on a freshly created bio.
>>
>> Lastly it marks bio_add_page() as __must_check so we don't have to go again
>> and audit all callers.
> 
> Looks fine to me, though it would be nice if the fs and dm people could
> give this a quick look. Should not take long, any empty bio addition
> should, by definition, be able to use a non-checked page addition for
> the first page.
> 

I think the FS side is all covered. @Mike could you have a look at the dm
patches?

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
