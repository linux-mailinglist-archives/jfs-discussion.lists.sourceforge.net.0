Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F906AA0BBF
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Apr 2025 14:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rFEpNYPbsmCd/WkQql+7DINgDdd/lokgQij6el1q95c=; b=iH2jNGITI4V3WwWkXesCh4ecZF
	wJAjIycURqgW8ql/LQVOnL61oazvSTSTxYKjJ2FCLhrpDmcrpZrjSvNt+NDGHlhK184dtQraORQGF
	TheEhVfTUPaY4y2YUs6wZSCxSypgjWoOp1FftWy9tp0wQzk2YQzF9iljGBbbpmFY8eho=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u9k7L-0005WR-R8;
	Tue, 29 Apr 2025 12:31:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u9k7I-0005WI-KG
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 12:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VUXBqbTfy886BntypX9z42BC6UkKHtD7Zniklbnavuk=; b=PHX9xIrIEbEbgYqfb3yQI2DhXB
 zXQg6INp3Xb6O5VPgn2cF7WPXfRuLjiqXh3Xt/UbZduF1vyPXhN9Hx5ZdkBqTT96XLC/EPJ5ZCKKC
 zSIhnnIANR9x1YY3ls47fUve/ULaki48a2UX+MS/AaicphWpN8hexeVPCSqmL1QD79qk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VUXBqbTfy886BntypX9z42BC6UkKHtD7Zniklbnavuk=; b=N7JcdvZBMaNOJmH3cvATIO8puq
 6fUb+VzZGMPUG2XxkLNFrm9/gUm0aAF/86wwZEIcxdwYSZ5Gf8PI3S6ZlA0H6wx/Tnec46jRMPVZ+
 7OUz7e4NQxaPVS5kbcvfmawXCxhqskvXucIiy/WBMJftxOgRZtdzM84BVCnowQqUS6kY=;
Received: from mail-co1nam11on2047.outbound.protection.outlook.com
 ([40.107.220.47] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u9k72-0004fy-80 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 12:31:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yqiIOIeC9XwqlPaot4f0K09ReggFFalNT82QtxZiTHA3oICMrHVrska51EMGbeNlf1/7SH3CcW3tj6oZdlPfV6KguhvFaoH2Ey1dryLVFMH4RQActen/RD9q4uc7xoKAOyvEnZPGysnqSkxGurbLmZBPOaQ9tOkxAYgp/AYKOGHX4ly7hU+HeYl42CYlIl6uLHEdPKKl2OEbJkNC1O6PRSP0HFuy7XORCiZDKx97gWAhnzuqh2wdIX4gS9d0N/PcEduVyvAavqpH9VTqPcLXN2UJjfjyDw/7du2n31CZYag3A6Fmn272raNvNl6quAXnEycS01Je+mknGgOzPz/B4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUXBqbTfy886BntypX9z42BC6UkKHtD7Zniklbnavuk=;
 b=R3zs6IqRq/HIjh2+GQxbCrxuhnJuYKaZe3uQSHVDnnxKZMubvadrgrZLVXAUh7noxMFsEFmCgiSyoqxtIOw3vci3ZQcOffwPBExJok5w5KgcHpveKIvTncyjo6mvD1w23kGXIBcb+E4t/SggzOIf9gvBjzoj03QA/ZONrIV08UyxP+FOGGJTBAJWNMUHSVKSYpjq/PQMrRSR65EkK/kefTgOvhWagFxeY0v/FTIChYzgwj2X/h/wpiaqqTHQJ8SPBaU05Z9tFHtglCrCKGxNF5f2vUfq1BnicygwHP7APvxL78mKBKS4DAKMw0IcDokYJRBtfAFPqRv3u6GfHGyhIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUXBqbTfy886BntypX9z42BC6UkKHtD7Zniklbnavuk=;
 b=a3mCBbwJlmwj8AEHtgUvLriKryrDRktkxspeF32bHWafZ/0ByFbIpECp1o6dFLNT9lMBxR6X05XzFE1iJywyV/LjuhK/o15HpQe+fbxNR0XEvYzdxgFwBSuz7PLrrs9tTVk6oJmsEYK0KY/IMjM+T/Y8tKjyMOQmUa27uVof7to=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CH2PR12MB4262.namprd12.prod.outlook.com (2603:10b6:610:af::8)
 by PH0PR12MB8776.namprd12.prod.outlook.com (2603:10b6:510:26f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Tue, 29 Apr
 2025 10:57:13 +0000
Received: from CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870]) by CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870%7]) with mapi id 15.20.8699.012; Tue, 29 Apr 2025
 10:57:12 +0000
Message-ID: <57536c5a-23dd-4f14-af35-9c5523000e80@amd.com>
Date: Tue, 29 Apr 2025 16:27:04 +0530
User-Agent: Mozilla Thunderbird
To: David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
 <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
 <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
 <aAmtzAv6ZbbRpKHM@casper.infradead.org>
 <7ff5b149-534d-4bb7-8c6d-3147279d3fae@amd.com>
 <604a1db2-bd64-455e-9cf7-968cacef0122@redhat.com>
Content-Language: en-US
In-Reply-To: <604a1db2-bd64-455e-9cf7-968cacef0122@redhat.com>
X-ClientProxiedBy: BM1PR01CA0149.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::19) To CH2PR12MB4262.namprd12.prod.outlook.com
 (2603:10b6:610:af::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4262:EE_|PH0PR12MB8776:EE_
X-MS-Office365-Filtering-Correlation-Id: e0f58331-a23e-47b7-452c-08dd870c982f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWpBdHJoVnBsRTlDT0FLdVBqTklZeWlxQ3J3RXlmZHE0K2xPckg2VWhFY3hl?=
 =?utf-8?B?TW1sVTAxZmFsLzVtSGNXL0VJRG9SbVBtMDZBbmh0UUtSdDdlYkVjWStneElw?=
 =?utf-8?B?VjZ1RFgyZkREbU41eURrcHU2RFVpR0xOai9TaEdzRUlicFBibEY0QjZZekw1?=
 =?utf-8?B?MXE2TGtQejBzK2E4TnN1SjZpdktLTisrcVZwaGhBMlFacElaK2dDaXpTSjVr?=
 =?utf-8?B?L0VxT3VKU1lvSG5jcUdXelRJUkNvbEI3Rmp2bHc3c1FnK2JWUHN5Q0tscWQ5?=
 =?utf-8?B?dUVkdml0dWZsZE94VG5pVXljRFExRWNjRkxWUVluTXBPekhhU3hZYWZtcWxX?=
 =?utf-8?B?WHlLeTZmTjIzcUtUTjg0YVVqNTkwVmp1Q0Fvd0E3b1BpSXdjUlFDMWtIY1NN?=
 =?utf-8?B?R1MyeUQzcUl4T2YveHdzZW80Q2lEdlVBMmR2YVhaMWJtTVVkV1hxZHlGRFQ2?=
 =?utf-8?B?Y1EzSERUNDBjdDMxVTA2OUl3QXRTRFpycTNYYWtxZW5ySFFsYUUzY3ZQemox?=
 =?utf-8?B?ck9vdmtITGh2M3pKNHhwL3lFVkZSaTVzaCtkQ2oxVVU0ejMyNlo2ZFZVY0Ur?=
 =?utf-8?B?OVVzelAvcUdCRFhqR2dsY0tMNlRaZHpkc3FraExhRzdtTU9UL2xxRmxsNHU1?=
 =?utf-8?B?ejdlTkpXek9wZWY4Z21YY0dTY1lVWUdEbExVY0t6dUxZNlhWeEpSTlNLNm1i?=
 =?utf-8?B?N0drQ2haeTVhZmdPU2lFN2xHNGtJZHNXQzFLdXA0ajlnZG1wZlFCTVNtWHVq?=
 =?utf-8?B?RE1QaVZjdDg3S0hPZ29KMng0VGovQkFZckRkdFpKUGFnOHpuN1pBcGtpNGhI?=
 =?utf-8?B?YU9kb0N6NHVtSFd1ODhGK01ZZ2l1d3JIN1locmtQemZDUGZqbFZiU3BZNmlD?=
 =?utf-8?B?elFicmtLZGR6L25BWGtoYk5hM2tEQ1grYUtvNGhpa24rcE5SMG5mQU50VGRP?=
 =?utf-8?B?UnRDZDJYUXVwdzEvVHNnRWkwNjd5K1M3REtkZndpM0k1V3dWWGdBR0txSFdJ?=
 =?utf-8?B?c2ZzMklNRE9OT1pJS3RBREg0eTQzUHV3cHg3dzQ3TmRLQkRHRmRSTFJJU3Zx?=
 =?utf-8?B?T3B3bUtmd0x4d3QrQmR4ZU9sWjRHN3dCWnd5ZlBCVm5XeXBHbHJRajN5WHdq?=
 =?utf-8?B?dWlEdGRqL0hPSVA3UG1BdWJqOHliSGNjRGZqMGY2dS8xUGhobk9tQ1NPYlMy?=
 =?utf-8?B?NFlhMkk4T0d0eE5RSHo3RnNPVlk3K25mWDZvdDFwQ3BNeEwyUlZqT3FOWFBp?=
 =?utf-8?B?aEREMnJKZXdHVVp1VDJFOTVhYWdMK1cvQjFrYUxHV09Camcwekd6aHVjS3F0?=
 =?utf-8?B?M0hOMWk0Q3ZueEVWQnR6dER4TzI5TzJsZmxucXlMMHdxd1k5TXZ6d0RVNmdC?=
 =?utf-8?B?NS9Pa2hEYzBzQzVKaWVVSDlQb3YwRzhhOVpVbEtwZ1dSZ1A2eWdMQU50RSts?=
 =?utf-8?B?ZWcxdG9JWmtibG05ek5LMnY1WEMyc0RRcEo3Tk01ajN5RmRrRWhJSVduTlJD?=
 =?utf-8?B?UmFTb3J4VUhUa0JjMXgvSGJ5Tnl4T1NYU3BSM01jWFpxekl5T3BYbkFPU2Fl?=
 =?utf-8?B?SjUyRnhqeVFUUHNiR1IyN2ZjdUg0UWsxQWI4aGVQVkNjeEFHWWtSRkJ2RmVw?=
 =?utf-8?B?RHRVN1QxemNyNS94dm1DNGtPQWtQckJmZG5GTUJ2Y1NzTVBZQU5ya3RFNDRt?=
 =?utf-8?B?TU96amJSNWxNV2QwWWdOYzNZZVJwWnJLbEExZ3ZnaklDSXljeUs2Y2dtS2w5?=
 =?utf-8?B?dHlxemZpaWk4TEY0QmxUTEF0RFB0dzZxMDFiRmpUS21OQnUxUnVDKzR2aURX?=
 =?utf-8?B?bkoyZXh2MWdjOExsN29aSjQwYm5UWkpMak1QbzFFSk1peEN1cGRvQUJxb09J?=
 =?utf-8?B?RG0zTXJUZUQyYlpEUWQvYUZydENjek9hOWVHbTRoMGh1MWpRUklPR1BkaGwx?=
 =?utf-8?Q?iEwn/s8BY0k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB4262.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTkyNkI1cFQzRlQ1elkvdkZvTWNua2F0QXl6cFd3UFRMWGdueHhLU3lkRTJG?=
 =?utf-8?B?R0ZIZEdoRm54THIxaFFHeE9PeTBpTUpaeFJZZWpkcW1TTThaUzBpYmt3ZlRU?=
 =?utf-8?B?TlVXVkJDVlpNbCtyOWh2NC83SDFBTHpESmFPT0tZemt4VlJBQ2EyNzhZUVQ1?=
 =?utf-8?B?SkRsd04yVm5idENCWnNpaWxWQ1ZKcGlDNGoxQVU5TTMzU0JyN25kRTNWeHJU?=
 =?utf-8?B?SjZFT3JWcTErc0JIVDZaV09haE1uTStuOGhZbWF3WStDZ2ZYUFRDN05Qc1RZ?=
 =?utf-8?B?bWMvWkVvY0ZiZFoyRi9FdDdScVcybTVZWTFPaUYwaUcrZHdCb3VkRDVqcHYx?=
 =?utf-8?B?eDg4VVhkTWNEUUwyK1I0UFFXbC9xbmlVb1RlK3Q0TUJ5ZjFVWUNEUlNOMVRr?=
 =?utf-8?B?SWZqU0gwc1g3cHhiWEs3WjcwVlZadm1ibVgxZE1CeEJZWDFmT1BxR1pPUVdi?=
 =?utf-8?B?dFJHelQvbVA1Ukl3MUdXWFJjR1JmOWlyUUptL1Bjb3R1NjF5UUJPSkplQ0R0?=
 =?utf-8?B?NE5TSHJFVmowOWtDRHh5SENVODZwWXdBMC9HbXNiQUlpL1FOWXFNOC8wcERW?=
 =?utf-8?B?bFREUnkxWDhKMVVybVJGN2N4ejdwMU1JTTVwYUMzUVNLL0VqOE5ZNGw5eFRN?=
 =?utf-8?B?TTNpVnlmanEycHl4YXJVQUlLOUlxTnpCTlZRbmVQV2F0RzZSRWU4b0wzZWFX?=
 =?utf-8?B?OWp5TXBMMkNaU1BEZG9YQStVYmp0VWZIc1QyY0lZZFJONk5uQjUvVXE3VmNp?=
 =?utf-8?B?Z3VnMzFGM3pNWXQrWlV1c1FaZkVXS2ZzSlBya3VEWE91K3BSV0V6UDBXYndM?=
 =?utf-8?B?cDlCaFdIWFl2bThMTEVsS1VSeFRsOXRYTjh1MmVpcUwvSkF4MFFqSlozaXQ1?=
 =?utf-8?B?Vy9HQzhxWGZMN2wwM1RJT1VXd01kMmJNYUJNc2hrRSt1dnZuaHYwVGZOcm1k?=
 =?utf-8?B?QnYwb2hQaEwzd3ZITjdRWGIwUHRKRi9QalprUVg1citqUktaYnZaemJOeSts?=
 =?utf-8?B?dmtwSVNwYllhM0dXZ1V2S1RRSkhaUlFOb041bHdhQ3BvMEpDc3I2YktBUjBZ?=
 =?utf-8?B?QVozRE1LSTgzYnhXbkVkR3ZRbHlHTFgzVWtINVNuUVJtRTRIYVI2d01XSUc5?=
 =?utf-8?B?a0RJR0VOM2k3ZEpMRURFWVhxQVRvcUxaYVRScWVtM3FOQUVySzRQcTd3RHBC?=
 =?utf-8?B?ZnhiNi9JWDRFbHp1RzV5RXFBNU5takJUSGUvOXVWQ3RWMGZPeWFLOXA3Y0Jx?=
 =?utf-8?B?Zm9LVmt0U28rbWhFdTFZd2V6TEhxTEo3ZVJUK3JoQXI2OG1KMXVsOXFNTzNI?=
 =?utf-8?B?Z0ZiWFoyaEdHYnRiMnFkN1lXdmlkaHEyTlc2SkEwVEl2K0dwSG5yQ25ZRWRY?=
 =?utf-8?B?Sk9hckRKUXJhUGlMb0srMEVPYUJxVUE2bml4Tklkc0RFOUFOWExOWFRJYjYr?=
 =?utf-8?B?MHM4YURXRGhBRk5IUU5CYy9xU0l4ZDVzVFEvazdrNUFldG84UGZhK0VTb2tj?=
 =?utf-8?B?Y2VYVkNUM2NJYTQ1ckU5UHFvSExURktaeE90dDQ1UVIwb2tMVkhWSVN1TVFr?=
 =?utf-8?B?RXF6dmhTYzhPS00vZlhUZUZxaUtUM3RIMDFFeUVJbUNjVUxmdG9QdTFHRmh5?=
 =?utf-8?B?VGU3dFBMSWdWWWsweHAwZVFzSGtJVHc3bTJrdGtiZitRajhkcElLK09pejFz?=
 =?utf-8?B?UVM4MjNRMUFFWnhPTUxiQUhVcUIwZnkrWjZINnIzaWFMQlF0clZQSFVaNlRw?=
 =?utf-8?B?clAwSVd5UDdoZXFqZlZ0S2RER2o0U2R5RWViYy9qbTU0UXg2TUJycVg3bGpT?=
 =?utf-8?B?VEpZYjJReTRRZWNTMVV0SUtyNStlQk44VDU1U2VFQXFBV3pMd3BsLy90UXZz?=
 =?utf-8?B?RkhhWHBNZGVZcnQ3QTBqN2NDbUtPdWRIWURjTytmQ3ExSEpNZG1lN05lQmhO?=
 =?utf-8?B?cFdpdGlCTFNSS29FOE1xd3NCbGlsaFcwZkJjdGFvSjhWclVWWFE4YWtTdDNO?=
 =?utf-8?B?RFE3VG5JenN6ZmR1Uk0zY3VGL3VreGhkaGMrRzZkMnlZTEg3cyt4MHdFamJi?=
 =?utf-8?B?MDhZQUlqNWFBbnRGc0JKT2xWQWhnMkxaRnJMMGhQNFlHMHVTVEkzaUQ5bzBV?=
 =?utf-8?Q?xyTjctPqnldARQZmWcMqc9ehQ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0f58331-a23e-47b7-452c-08dd870c982f
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4262.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 10:57:12.3616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yR38LDCAIXtbp6QP2UZjcjFpbJ0Z+1DDXeRA/Dduj1JtlTSoJcPd18dIss1UHNikbnfRwW97+v0+CgG3ddIVag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8776
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/25/2025 1:17 PM, David Hildenbrand wrote: > On 24.04.25
 13:57, Shivank Garg wrote: >> Hi All, >> >> Thank you for reviewing my patch
 and providing feedback. >> >> On 4/24/2025 8:49 AM, Matthew Wi [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.47 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.220.47 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.220.47 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u9k72-0004fy-80
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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
From: Shivank Garg via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Shivank Garg <shivankg@amd.com>
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, apopple@nvidia.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, donettom@linux.ibm.com, ziy@nvidia.com,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

CgpPbiA0LzI1LzIwMjUgMToxNyBQTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4gT24gMjQu
MDQuMjUgMTM6NTcsIFNoaXZhbmsgR2FyZyB3cm90ZToKPj4gSGkgQWxsLAo+Pgo+PiBUaGFuayB5
b3UgZm9yIHJldmlld2luZyBteSBwYXRjaCBhbmQgcHJvdmlkaW5nIGZlZWRiYWNrLgo+Pgo+PiBP
biA0LzI0LzIwMjUgODo0OSBBTSwgTWF0dGhldyBXaWxjb3ggd3JvdGU6Cj4+PiBPbiBXZWQsIEFw
ciAyMywgMjAyNSBhdCAwOToyNTowNUFNICswMjAwLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToK
Pj4+PiBPbiAyMy4wNC4yNSAwOToyMiwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+Pj4+IE9u
IDIzLjA0LjI1IDAyOjM2LCBNYXR0aGV3IFdpbGNveCB3cm90ZToKPj4+Pj4+IE9uIFR1ZSwgQXBy
IDIyLCAyMDI1IGF0IDA0OjQxOjExUE0gLTA3MDAsIEFuZHJldyBNb3J0b24gd3JvdGU6Cj4+Pj4+
Pj4+ICsvKioKPj4+Pj4+Pj4gKyAqIGZvbGlvX21pZ3JhdGVfZXhwZWN0ZWRfcmVmcyAtIENvdW50
IGV4cGVjdGVkIHJlZmVyZW5jZXMgZm9yIGFuIHVubWFwcGVkIGZvbGlvLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gImZvbGlvX21pZ3JhdGlvbl9leHBlY3RlZF9yZWZzIgo+Pgo+PiBUaGFuayB5b3UgZm9yIGNh
dGNoaW5nIHRoaXMsIEknbGwgZml4IGl0Lgo+Pgo+PiBJIHdhc24ndCBwcmV2aW91c2x5IGF3YXJl
IG9mIHVzaW5nIG1ha2UgVz0xIHRvIGJ1aWxkIGtlcm5lbC1kb2NzIGFuZAo+PiBjaGVjayBmb3Ig
d2FybmluZ3MgLSB0aGlzIGlzIHZlcnkgdXNlZnVsIGluZm9ybWF0aW9uIGZvciBtZS4KPj4KPj4g
SSdsbCBhZGQgdG8gY2hhbmdlbG9nIHRvIGJldHRlciBleHBsYWluIHdoeSB0aGlzIGlzIG5lZWRl
ZCBmb3IgSkZTLgo+Pgo+Pj4+Pj4KPj4+Pj4+IFdoYXQgSSBkbyB3b25kZXIgaXMgd2hldGhlciB3
ZSB3YW50IHRvIGhhdmUgc3VjaCBhIHNwZWNpYWxpc2VkCj4+Pj4+PiBmdW5jdGlvbiBleGlzdGlu
Zy7CoCBXZSBoYXZlIGNhbl9zcGxpdF9mb2xpbygpIGluIGh1Z2VfbWVtb3J5LmMKPj4+Pj4+IHdo
aWNoIGlzIHNvbWV3aGF0IG1vcmUgY29tcHJlaGVuc2l2ZSBhbmQgZG9lc24ndCByZXF1aXJlIHRo
ZSBmb2xpbyB0byBiZQo+Pj4+Pj4gdW5tYXBwZWQgZmlyc3QuCj4+Pj4+Cj4+Pj4+IEkgd2FzIGRl
YmF0aW5nIHdpdGggbXlzZWxmIHdoZXRoZXIgd2Ugc2hvdWxkIGRvIHRoZSB1c3VhbCAicmVmcyBm
cm9tCj4+Pj4+IC0+cHJpdmF0ZSwgcmVmcyBmcm9tIHBhZ2UgdGFibGUgbWFwcGluZ3MiIC4uIGRh
bmNlLCBhbmQgbG9vayB1cCB0aGUKPj4+Pj4gbWFwcGluZyBmcm9tIHRoZSBmb2xpbyBpbnN0ZWFk
IG9mIHBhc3NpbmcgaXQgaW4uCj4+Pj4+Cj4+Pj4+IEkgY29uY2x1ZGVkIHRoYXQgZm9yIHRoaXMg
KG1pZ3JhdGlvbikgcHVycG9zZSB0aGUgZnVuY3Rpb24gaXMgZ29vZAo+Pj4+PiBlbm91Z2ggYXMg
aXQgaXM6IGlmIGFidXNlZCBpbiB3cm9uZyBjb250ZXh0IChlLmcuLCBzdGlsbCAtPnByaXZhdGUs
Cj4+Pj4+IHN0aWxsIHBhZ2UgdGFibGUgbWFwcGluZ3MpLCBpdCB3b3VsZCBub3QgZmFrZSB0aGF0
IHRoZXJlIGFyZSBubwo+Pj4+PiB1bmV4cGVjdGVkIHJlZmVyZW5jZXMuCj4+Pj4KPj4+PiBTb3Jy
eSwgSSBmb3Jnb3QgdGhhdCB3ZSBzdGlsbCBjYXJlIGFib3V0IHRoZSByZWZlcmVuY2UgZnJvbSAt
PnByaXZhdGUgaGVyZS4KPj4+PiBXZSBleHBlY3QgdGhlIGZvbGlvIHRvIGJlIHVubWFwcGVkLgo+
Pj4KPj4+IFJpZ2h0LCBzbyBqdXN0IGFkZGluZyBpbiBmb2xpb19tYXBjb3VudCgpIHdpbGwgYmUg
YSBuby1vcCBmb3IgbWlncmF0aW9uLAo+Pj4gYnV0IGVuYWJsZSBpdHMgcmV1c2UgYnkgY2FuX3Nw
bGl0X2ZvbGlvKCkuwqAgTWF5YmUuwqAgQW55d2F5LCB0aGUgd2F5IEkKPj4+IGV4cGxhaW4gcGFn
ZSByZWZvY3VudHMgdG8gcGVvcGxlIChhbmQgSSBuZWVkIHRvIHB1dCB0aGlzIGluIGEgZG9jdW1l
bnQKPj4+IHNvbWV3aGVyZSk6Cj4+Pgo+Pj4gVGhlcmUgYXJlIHRocmVlIHR5cGVzIG9mIGNvbnRy
aWJ1dGlvbiB0byB0aGUgcmVmY291bnQ6Cj4+Pgo+Pj4gwqAgLSBFeHBlY3RlZC7CoCBUaGVzZSBh
cmUgZGVkdWNpYmxlIGZyb20gdGhlIGZvbGlvIGl0c2VsZiwgYW5kIHRoZXkncmUgYWxsCj4+PiDC
oMKgwqAgZmluZGFibGUuwqAgWW91IG5lZWQgdG8gZmlndXJlIG91dCB3aGF0IHRoZSBleHBlY3Rl
ZCBudW1iZXIgb2YKPj4+IMKgwqDCoCByZWZlcmVuY2VzIGFyZSB0byBhIGZvbGlvIGlmIHlvdSdy
ZSBnb2luZyB0byB0cnkgdG8gZnJlZXplIGl0Lgo+Pj4gwqDCoMKgIFRoZXNlIGNhbiBiZSByZWZl
cmVuY2VzIGZyb20gdGhlIG1hcGNvdW50LCB0aGUgcGFnZSBjYWNoZSwgdGhlIHN3YXAKPj4+IMKg
wqDCoCBjYWNoZSwgdGhlIHByaXZhdGUgZGF0YSwgeW91ciBjYWxsIGNoYWluLgo+Pj4gwqAgLSBU
ZW1wb3JhcnkuwqAgU29tZW9uZSBlbHNlIGhhcyBmb3VuZCB0aGUgZm9saW8gc29tZWhvdzsgcGVy
aGFwcyB0aHJvdWdoCj4+PiDCoMKgwqAgdGhlIHBhZ2UgY2FjaGUsIG9yIGJ5IGNhbGxpbmcgR1VQ
IG9yIHNvbWV0aGluZy7CoCBUaGV5IG1lYW4geW91IGNhbid0Cj4+PiDCoMKgwqAgZnJlZXplIHRo
ZSBmb2xpbyBiZWNhdXNlIHlvdSBkb24ndCBrbm93IHdobyBoYXMgdGhlIHJlZmVyZW5jZSBvciBo
b3cKPj4+IMKgwqDCoCBsb25nIHRoZXkgbWlnaHQgaG9sZCBpdCBmb3IuCj4+PiDCoCAtIFNwdXJp
b3VzLsKgIFRoaXMgaXMgbGlrZSBhIHRlbXBvcmFyeSByZWZlcmVuY2UsIGJ1dCB3b3JzZSBiZWNh
dXNlIGlmCj4+PiDCoMKgwqAgeW91IHJlYWQgdGhlIGNvZGUsIHRoZXJlIHNob3VsZCBiZSBubyB3
YXkgZm9yIHRoZXJlIHRvIGJlIGFueSB0ZW1wb3JhcnkKPj4+IMKgwqDCoCByZWZlcmVuY2VzIHRv
IHRoZSBmb2xpby7CoCBTb21lb25lJ3MgZm91bmQgYSBzdGFsZSBwb2ludGVyIHRvIHRoaXMKPj4+
IMKgwqDCoCBmb2xpbyBhbmQgaGFzIGJ1bXBlZCB0aGUgcmVmZXJlbmNlIGNvdW50IHdoaWxlIHRo
ZXkgY2hlY2sgdGhhdCB0aGUKPj4+IMKgwqDCoCBmb2xpbyB0aGV5IGhhdmUgaXMgdGhlIG9uZSB0
aGV5IGV4cGVjdGVkIHRvIGZpbmQuwqAgVGhleSdyZSBnb2luZwo+Pj4gwqDCoMKgIHRvIGZpbmQg
b3V0IHRoYXQgdGhlIHBvaW50ZXIgdGhleSBmb2xsb3dlZCBpcyBzdGFsZSBhbmQgcHV0IHRoZWly
Cj4+PiDCoMKgwqAgcmVmY291bnQgc29vbiwgYnV0IGluIHRoZSBtZWFudGltZSB5b3Ugc3RpbGwg
Y2FuJ3QgZnJlZXplIHRoZSBmb2xpby4KPj4+Cj4+PiBTbyBJIGRvbid0IGxvdmUgdGhlIGlkZWEg
b2YgaGF2aW5nIGEgZnVuY3Rpb24gd2l0aCB0aGUgd29yZCAiZXhwZWN0ZWQiCj4+PiBpbiB0aGUg
bmFtZSB0aGF0IHJldHVybnMgYSB2YWx1ZSB3aGljaCBkb2Vzbid0IHRha2UgaW50byBhY2NvdW50
IGFsbAo+Pj4gdGhlIHBvdGVudGlhbCBjb250cmlidXRvcnMgdG8gdGhlIGV4cGVjdGVkIHZhbHVl
LsKgIEFuZCBzdXJlIHdlIGNhbiBrZWVwCj4+PiBhZGRpbmcgcXVhbGlmaWVycyB0byB0aGUgZnVu
Y3Rpb24gbmFtZSB0byBpbmRpY2F0ZSBob3cgaXQgaXMgdG8gYmUgdXNlZCwKPj4+IGJ1dCBhdCBz
b21lIHBvaW50IEkgdGhpbmsgd2Ugc2hvdWxkIHNheSAiSXQncyBPSyBmb3IgdGhpcyB0byBiZSBh
IGxpdHRsZQo+Pj4gbGVzcyBlZmZpY2llbnQgc28gd2UgY2FuIHVuZGVyc3RhbmQgd2hhdCBpdCBt
ZWFucyIuCj4+Cj4+IFRoYW5rIHlvdSwgV2lsbHksIGZvciB0aGUgZGV0YWlsZWQgZXhwbGFuYXRp
b24gYWJvdXQgcGFnZSByZWZlcmVuY2UgY291bnRpbmcuCj4+IFRoaXMgaGFzIGhlbHBlZCBtZSB1
bmRlcnN0YW5kIHRoZSBjb25jZXB0IG11Y2ggYmV0dGVyLgo+Pgo+PiBCYXNlZCBvbiB5b3VyIGV4
cGxhbmF0aW9uIGFuZCB0aGUgZGlzY3Vzc2lvbiwgSSdtIHN1bW1hcml6aW5nIHRoZSAyIGFwcHJv
YWNoZXM6Cj4+Cj4+IDEuIFJlbmFtZSBmb2xpb19taWdyYXRpb25fZXhwZWN0ZWRfcmVmcyB0byBm
b2xpb19taWdyYXRpb25fZXhwZWN0ZWRfYmFzZV9yZWZzLCB0bwo+PiB0byBjbGFyaWZ5IGl0IGRv
ZXMgbm90IGFjY291bnQgZm9yIG90aGVyIHBvdGVudGlhbCBjb250cmlidXRvcnMuCj4+IG9yIGZv
bGlvX3VubWFwcGVkX2Jhc2VfcmVmcz8KPj4gMi4gQWNjb3VudGluZyBhbGwgcG9zc2libGUgY29u
dHJpYnV0b3JzIHRvIGV4cGVjdGVkIHJlZnM6Cj4+IGZvbGlvX2V4cGVjdGVkX3JlZnMobWFwcGlu
ZywgZm9saW8pCj4+IHvCoMKgwqAKPj4gwqDCoMKgwqBpbnQgcmVmcyA9IDE7Cj4+Cj4+IMKgwqDC
oMKgaWYgKG1hcHBpbmcpIHsKPj4gwqDCoMKgwqDCoMKgwqAgaWYgKGZvbGlvX3Rlc3RfYW5vbihm
b2xpbykpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVmcyArPSBmb2xpb190ZXN0X3N3YXBj
YWNoZShmb2xpbykgPwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm9saW9fbnJf
cGFnZXMoZm9saW8pIDogMDsKPj4gwqDCoMKgwqDCoMKgwqAgZWxzZQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJlZnMgKz0gZm9saW9fbnJfcGFnZXMoZm9saW8pOwo+Pgo+PiDCoMKgwqDCoMKg
wqDCoCBpZiAoZm9saW9fdGVzdF9wcml2YXRlKGZvbGlvKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZWZzKys7Cj4+IMKgwqDCoMKgfQo+PiDCoMKgwqDCoHJlZnMgKz0gZm9saW9fbWFwY291
bnQoZm9saW8pOyAvLyB0YWtlcyBtYXBwZWQgZm9saW8gaW50byBhY2NvdW50IGFuZCBldmFsdWF0
ZSBhcyBuby1vcCBmb3IgdW5tYXBwZWQgZm9saW9zIGR1cmluZyBtaWdyYXRpb24KPj4gwqDCoMKg
wqByZXR1cm4gcmVmczsKPj4gfQo+Pgo+PiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgdGhpcyBhcHBy
b2FjaCBpcyBhY2NlcHRhYmxlIG9yIGlmIHlvdSBoYXZlCj4+IG90aGVyIHN1Z2dlc3Rpb25zIGZv
ciBpbXByb3ZlbWVudC4KPiAKPiBBIGNvdXBsZSBvZiBwb2ludHM6Cj4gCj4gMSkgQ2FuIHdlIG5h
bWUgaXQgZm9saW9fZXhwZWN0ZWRfcmVmX2NvdW50KCkKPiAKPiAyKSBDYW4gd2UgYXZvaWQgcGFz
c2luZyBpbiB0aGUgbWFwcGluZz8gTWlnaHQgbm90IGJlIGV4cGVuc2l2ZSB0byBsb29rIGl0Cj4g
wqDCoCB1cCBhZ2Fpbi4gQmVsb3cgSSBhdm9pZCBjYWxsaW5nIGZvbGlvX21hcHBpbmcoKS4KPiAK
PiAzKSBDYW4gd2UgZGVsZWdhdGUgYWRkaW5nIHRoZSBhZGRpdGlvbmFsIHJlZmVyZW5jZSB0byB0
aGUgY2FsbGVyPyBXaWxsIG1ha2UgaXQKPiDCoMKgIGVhc2llciB0byB1c2UgZWxzZXdoZXJlIChl
LmcuLCBub3QgYWRkaXRpb25hbCByZWZlcmVuY2UgYmVjYXVzZSB3ZSBhcmUgaG9sZGluZwo+IMKg
wqAgdGhlIHBhZ2UgdGFibGUgbG9jaykuCj4gCj4gNCkgQ2FuIHdlIGFkZCBrZXJuZWxkb2MsIGFu
ZCBpbiBwYXJ0aWN1bGFyIGRvY3VtZW50IHRoZSBzZW1hbnRpY3M/Cj4gCj4gTm90IHN1cmUgaWYg
d2Ugc2hvdWxkIGlubGluZSB0aGlzIGZ1bmN0aW9uIG9yIHB1dCBpdCBpbnRvIG1tL3V0aWxzLmMK
PiAKCkhpIERhdmlkLAoKVGhhbmsgeW91IGZvciB0aGUgZGV0YWlsZWQgc3VnZ2VzdGlvbnMuIFRo
ZXkgYWxsIG1ha2Ugc2Vuc2UgdG8gbWUuCgpJIGRpZCBub3QgdW5kZXJzdGFuZCBhIGZldyBjaGFu
Z2VzIGluIHlvdXIgcGF0Y2ggYmVsb3c6Cj4gCj4gSSdtIHRoaW5raW5nIG9mIHNvbWV0aGluZyBs
aWtlIChjb21wbGV0ZWx5IHVudGVzdGVkKToKPiAKPiDCoAo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L21tLmggYi9pbmNsdWRlL2xpbnV4L21tLmgKPiBpbmRleCBhMjA1MDIwZTJhNThiLi5h
MGFkNGVkOWE3NWZmIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvbW0uaAo+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvbW0uaAo+IEBAIC0yMTEyLDYgKzIxMTIsNjEgQEAgc3RhdGljIGlubGluZSBi
b29sIGZvbGlvX21heWJlX21hcHBlZF9zaGFyZWQoc3RydWN0IGZvbGlvICpmb2xpbykKPiDCoMKg
wqDCoCByZXR1cm4gZm9saW9fdGVzdF9sYXJnZV9tYXliZV9tYXBwZWRfc2hhcmVkKGZvbGlvKTsK
PiDCoH0KPiDCoAo+ICsvKioKPiArICogZm9saW9fZXhwZWN0ZWRfcmVmX2NvdW50IC0gY2FsY3Vs
YXRlIHRoZSBleHBlY3RlZCBmb2xpbyByZWZjb3VudAo+ICsgKiBAZm9saW86IHRoZSBmb2xpbwo+
ICsgKgo+ICsgKiBDYWxjdWxhdGUgdGhlIGV4cGVjdGVkIGZvbGlvIHJlZmNvdW50LCB0YWtpbmcg
cmVmZXJlbmNlcyBmcm9tIHRoZSBwYWdlY2FjaGUsCj4gKyAqIHN3YXBjYWNoZSwgUEdfcHJpdmF0
ZSBhbmQgcGFnZSB0YWJsZSBtYXBwaW5ncyBpbnRvIGFjY291bnQuIFVzZWZ1bCBpbgo+ICsgKiBj
b21iaW5hdGlvbiB3aXRoIGZvbGlvX3JlZl9jb3VudCgpIHRvIGRldGVjdCB1bmV4cGVjdGVkIHJl
ZmVyZW5jZXMgKGUuZy4sCj4gKyAqIEdVUCBvciBvdGhlciB0ZW1wb3JhcnkgcmVmZXJlbmNlcyku
Cj4gKyAqCj4gKyAqIERvZXMgY3VycmVudGx5IG5vdCBjb25zaWRlciByZWZlcmVuY2VzIGZyb20g
dGhlIExSVSBjYWNoZS4gSWYgdGhlIGZvbGlvCj4gKyAqIHdhcyBpc29sYXRlZCBmcm9tIHRoZSBM
UlUgKHdoaWNoIGlzIHRoZSBjYXNlIGR1cmluZyBtaWdyYXRpb24gb3Igc3BsaXQpLAo+ICsgKiB0
aGUgZm9saW8gd2FzIGFscmVhZHkgaXNvbGF0ZWQgZnJvbSB0aGUgTFJVIGFuZCB0aGUgTFJVIGNh
Y2hlIGRvZXMgbm90IGFwcGx5Lgo+ICsgKgo+ICsgKiBDYWxsaW5nIHRoaXMgZnVuY3Rpb24gb24g
YW4gdW5tYXBwZWQgZm9saW8gLS0gIWZvbGlvX21hcHBlZCgpIC0tIHRoYXQgaXMKPiArICogbG9j
a2VkIHdpbGwgcmV0dXJuIGEgc3RhYmxlIHJlc3VsdC4KPiArICoKPiArICogQ2FsbGluZyB0aGlz
IGZ1bmN0aW9uIG9uIGEgbWFwcGVkIGZvbGlvIHdpbGwgbm90IHJlc3VsdCBpbiBhIHN0YWJsZSBy
ZXN1bHQsCj4gKyAqIGJlY2F1c2Ugbm90aGluZyBzdG9wcyBhZGRpdGlvbmFsIHBhZ2UgdGFibGUg
bWFwcGluZ3MgZnJvbSBjb21pbmcgKGUuZy4sCj4gKyAqIGZvcmsoKSkgb3IgZ29pbmcgKGUuZy4s
IG11bm1hcCgpKS4KPiArICoKPiArICogQ2FsbGluZyB0aGlzIGZ1bmN0aW9uIHdpdGhvdXQgdGhl
IGZvbGlvIGxvY2sgd2lsbCBhbHNvIG5vdCByZXN1bHQgaW4gYQo+ICsgKiBzdGFibGUgcmVzdWx0
OiBmb3IgZXhhbXBsZSwgdGhlIGZvbGlvIG1pZ2h0IGdldCBkcm9wcGVkIGZyb20gdGhlIHN3YXBj
YWNoZQo+ICsgKiBjb25jdXJyZW50bHkuCj4gKyAqCj4gKyAqIEhvd2V2ZXIsIGV2ZW4gd2hlbiBj
YWxsZWQgd2l0aG91dCB0aGUgZm9saW8gbG9jayBvciBvbiBhIG1hcHBlZCBmb2xpbywKPiArICog
dGhpcyBmdW5jdGlvbiBjYW4gYmUgdXNlZCB0byBkZXRlY3QgdW5leHBlY3RlZCByZWZlcmVuY2Vz
IGVhcmx5IChmb3IgZXhhbXBsZS4KPiArICogaWYgaXQgbWFrZXMgc2Vuc2UgdG8gZXZlbiBsb2Nr
IHRoZSBmb2xpbyBhbmQgdW5tYXAgaXQpLgo+ICsgKgo+ICsgKiBUaGUgY2FsbGVyIG11c3QgYWRk
IGFueSByZWZlcmVuY2UgKGUuZy4sIGZyb20gZm9saW9fdHJ5X2dldCgpKSBpdCBtaWdodCBiZQo+
ICsgKiBob2xkaW5nIGl0c2VsZiB0byB0aGUgcmVzdWx0Lgo+ICsgKgo+ICsgKiBSZXR1cm5zIHRo
ZSBleHBlY3RlZCBmb2xpbyByZWZjb3VudC4KPiArICovCj4gK3N0YXRpYyBpbmxpbmUgaW50IGZv
bGlvX2V4cGVjdGVkX3JlZl9jb3VudChjb25zdCBzdHJ1Y3QgZm9saW8gKmZvbGlvKQo+ICt7Cj4g
K8KgwqDCoCBjb25zdCBpbnQgb3JkZXIgPSBmb2xpb19vcmRlcihmb2xpbyk7Cj4gK8KgwqDCoCBp
bnQgcmVmX2NvdW50ID0gMDsKCldoeSBhcmUgd2Ugbm90IHRha2luZyBiYXNlIHJlZl9jb3VudCBh
cyAxIGxpa2UgaXQncyBkb25lIGluIG9yaWdpbmFsIGZvbGlvX2V4cGVjdGVkX3JlZnMKaW1wbGVt
ZW50YXRpb24/Cgo+ICsKPiArwqDCoMKgIGlmIChXQVJOX09OX09OQ0UoZm9saW9fdGVzdF9zbGFi
KGZvbGlvKSkpCj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+ICsKPiArwqDCoMKgIGlmIChm
b2xpb190ZXN0X2Fub24oZm9saW8pKSB7Cj4gK8KgwqDCoMKgwqDCoMKgIC8qIE9uZSByZWZlcmVu
Y2UgcGVyIHBhZ2UgZnJvbSB0aGUgc3dhcGNhY2hlLiAqLwo+ICvCoMKgwqDCoMKgwqDCoCByZWZf
Y291bnQgKz0gZm9saW9fdGVzdF9zd2FwY2FjaGUoZm9saW8pIDw8IG9yZGVyOwoKd2h5IG5vdCB1
c2UgZm9saW9fbnJfcGFnZXMoKSBoZXJlIGluc3RlYWQgMSA8PCBvcmRlcj8Kc29tZXRoaW5nIGxp
a2UgZm9saW9fdGVzdF9zd2FwY2FjaGUoZm9saW8pICogZm9saW9fbnJfcGFnZXMoZm9saW8pLgoK
PiArwqDCoMKgIH0gZWxzZSBpZiAoISgodW5zaWduZWQgbG9uZylmb2xpby0+bWFwcGluZyAmIFBB
R0VfTUFQUElOR19GTEFHUykpIHsKPiArwqDCoMKgwqDCoMKgwqAgLyogT25lIHJlZmVyZW5jZSBw
ZXIgcGFnZSBmcm9tIHRoZSBwYWdlY2FjaGUuICovCj4gK8KgwqDCoMKgwqDCoMKgIHJlZl9jb3Vu
dCArPSAhIWZvbGlvLT5tYXBwaW5nIDw8IG9yZGVyOwo+ICvCoMKgwqDCoMKgwqDCoCAvKiBPbmUg
cmVmZXJlbmNlIGZyb20gUEdfcHJpdmF0ZS4gKi8KPiArwqDCoMKgwqDCoMKgwqAgcmVmX2NvdW50
ICs9IGZvbGlvX3Rlc3RfcHJpdmF0ZShmb2xpbyk7Cj4gK8KgwqDCoCB9Cj4gKwo+ICvCoMKgwqAg
LyogT25lIHJlZmVyZW5jZSBwZXIgcGFnZSB0YWJsZSBtYXBwaW5nLiAqLwo+ICvCoMKgwqAgcmV0
dXJuIHJlZl9jb3VudCArIGZvbGlvX21hcGNvdW50KGZvbGlvKTs7Cgo+ICt9Cj4gKwo+IMKgI2lm
bmRlZiBIQVZFX0FSQ0hfTUFLRV9GT0xJT19BQ0NFU1NJQkxFCj4gwqBzdGF0aWMgaW5saW5lIGlu
dCBhcmNoX21ha2VfZm9saW9fYWNjZXNzaWJsZShzdHJ1Y3QgZm9saW8gKmZvbGlvKQo+IMKgewoK
SSB0ZXN0ZWQgeW91ciBwYXRjaCB3aXRoIHN0cmVzcy1uZyBhbmQgbXkgbW92ZS1wYWdlcyB0ZXN0
IGNvZGUuIEkgZGlkIG5vdCBzZWUKYW55IGJ1Z3MvZXJyb3JzLgoKVGhhbmtzLApTaGl2YW5rCgoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
