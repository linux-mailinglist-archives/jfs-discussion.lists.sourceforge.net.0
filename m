Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCBAA917A8
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Apr 2025 11:22:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u5LRr-0002I3-12;
	Thu, 17 Apr 2025 09:22:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u5LRp-0002Ht-1w
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 09:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hp3vDo01140tkDj0nYezrPuHLbdTrS1cqknfVOo86eg=; b=Oo9LEor/fdwL4CHroqvrT4ti2O
 vJVnqESc1qeTokKXZyWHi99CGMJWIyDbHAPHaKrlLnVR982LKbDbqczDqLyM0uwiUfeafQ4xLTrB+
 BGhQogf6T3zlmhNmloprZi9u9cTTWKTGcUUUT1GPJE1EfbHAUT6G6L9NasHZUAdc8DzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hp3vDo01140tkDj0nYezrPuHLbdTrS1cqknfVOo86eg=; b=WYBnJz/6EJiAp6zeQU24yDKgz2
 pvL5BhZ3gIH2PcElfDhOJy12tI0mENEidu6Y6R15equUAnjbGcAn6rVNjeQLdwXFsEmxBcaxH3kGK
 waICGPsP592IFdJogD1qTOirkNMb95WQNxnyv28n1UcMj9jG3SohLWBTT3636+8DloPE=;
Received: from mail-bn8nam12on2063.outbound.protection.outlook.com
 ([40.107.237.63] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u5LRY-0006o5-Cw for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 09:22:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YxV+GRWiCQUvApnCK5J0eH1u65ks7AwOzYcEBGLv0XCdyzqVyxKS69R6OuglgiCLSVvKZtg2N0IlyP0aDecfyRILA98M9BGhlo/wWBfq1s2bnMoFO5+ILu3qQHh67htPxAngNF6ahBxZromUeufXcVE9uM9UOAzGuiPna/SIxTrIrSYxUIQeGuxx9aqz+p2Mgu1XTaUjkHW8Cgb78whKJnxbJ3WcZVu8dIXAr9FHaR3ebTWPRxd9Cz9M1C9bERnS2S9Vj4fiBj2We7bKVQInk2y0+25j/Pp2KnFwvoeEtEQTXt0s813uWAunwI4dIFrNBcDyhWcmIHqsSq1Pmu64DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hp3vDo01140tkDj0nYezrPuHLbdTrS1cqknfVOo86eg=;
 b=GifNSvRkqfjbBI3vPItMnaAj0WjD4pl8TxEA4PTOjOJZdrm9/iG4oOiybmVHkwOuVo/vAHRQ/nYLZJcTTcfB08MMXcW+NEtQDKvfcdCWSVyu79iR21MU0fGZNrn5wTowFutIRwqoUtSoztEo7hDd7QJq3XLAM+lj+/EqzZ8wJywcBYDqR1ZEP+ufyqtXdO8qBw2Suca3P17hkoxMC7WYK9XvUz7Ydqdl2BXQms0lL03sGt9gFPvgOIuudT4+qpZ4R7tO0qigbteAhZSd7RMZwzBoMs4PGGYFP4rCZGX4tyTpvYD2DcQ3U6rWtxN3BbotItqgLuIhV+rCK+nHCa7feQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hp3vDo01140tkDj0nYezrPuHLbdTrS1cqknfVOo86eg=;
 b=xZWdmjmtRz+QgnuCYDagac+EGR5Gt8RqAka6qEt2mT73G/9W1wBi7p3rfsJVugFvPjhlfiWf9xT5vzcm4qLEiPHLlN1yshihjlkxvGbWtowc64PwEtHt8bstx49imJTkx4hwc5hE/N+ne38Q1W2lYZCUgrlBcsiA/fVs3bEVX5k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CH2PR12MB4262.namprd12.prod.outlook.com (2603:10b6:610:af::8)
 by SJ1PR12MB6243.namprd12.prod.outlook.com (2603:10b6:a03:456::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Thu, 17 Apr
 2025 09:06:59 +0000
Received: from CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870]) by CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870%6]) with mapi id 15.20.8655.022; Thu, 17 Apr 2025
 09:06:59 +0000
Message-ID: <98f897e2-9132-44e6-96bc-ba6e19442e3b@amd.com>
Date: Thu, 17 Apr 2025 14:36:50 +0530
User-Agent: Mozilla Thunderbird
To: syzbot <syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com>,
 akpm@linux-foundation.org, apopple@nvidia.com, david@redhat.com,
 donettom@linux.ibm.com, jane.chu@oracle.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, shaggy@kernel.org, syzkaller-bugs@googlegroups.com,
 wangkefeng.wang@huawei.com, willy@infradead.org, ziy@nvidia.com
References: <6800c00a.050a0220.5cdb3.000f.GAE@google.com>
Content-Language: en-US
In-Reply-To: <6800c00a.050a0220.5cdb3.000f.GAE@google.com>
X-ClientProxiedBy: PN4P287CA0125.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:2b2::7) To CH2PR12MB4262.namprd12.prod.outlook.com
 (2603:10b6:610:af::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4262:EE_|SJ1PR12MB6243:EE_
X-MS-Office365-Filtering-Correlation-Id: 553dcf06-1c8e-4123-423d-08dd7d8f3568
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vys3Z3VPZUJFaU9uMUp0MnkreG9tY3NKeERjcy9MSk1kVVVUNlZjbUEzMThG?=
 =?utf-8?B?M1Jmb3dhUS9KUjBhcjdqZkVuLy9lSzJkL29lN3BXcHdyMnpKM1BIb1pRa2hH?=
 =?utf-8?B?UXNocFN2aWIwYXBPbzk3eFF1SEdYejd3NWxkUEJMb1Vrb0JIZmVrZU4xTWEx?=
 =?utf-8?B?b2FDbFg5eXBqbU5lZ0tpVFRhQmVzNHhGcDNFalBzRmY5NENXQ0VwSHorNHZa?=
 =?utf-8?B?eHlsbXk1UCtNaEwrWHJzZ2p6clJmL3JCSmZ6SkQ5RXdoSUxBMUxHT2FWL1pF?=
 =?utf-8?B?YktRTUlodktMUFhBMDNhQWM4ZUw2Myt0T04vRnRuT3Bya0ltNHhJeCt1Vk0y?=
 =?utf-8?B?aXkyOWFXQmNCaWp1cCt5VGUvbkVmVmZ1YnZZMkVWZnhKWUg5MG4rSGVtNFd0?=
 =?utf-8?B?amxNTm02aXZMM01jS1J0WWdUM2JndWJrRkQrVHFMZU00c0d4TjF2dkJKeFQr?=
 =?utf-8?B?WXBFc0JkUGk2bUtoRERyMzJ1QUpJbUlueVdhTG1TQ2I0Nm9GNDgvemM2WVJ6?=
 =?utf-8?B?R3NqZ01ZSllxMDNOdFhSWFNwMTg0eEliZm5LRGUwNlZkdnZyMktPRnJCdVJ4?=
 =?utf-8?B?cTRHaUpseXhTYjB6NDFIL2ZhUEhOUlgxWFNRRm9Nb09yc3NPTVBPSGZoYjhB?=
 =?utf-8?B?WVRiSGx5OUM0ZFRtYkFKZHJjVSs0SHIrNVkxaFU4MStXejcxUGVFbXhTUWJZ?=
 =?utf-8?B?eE05a1BZOW81eERoMVFQY1g0QXN0cmliVUwvdVp4V1kxSXpLMTNDcUFpbnJl?=
 =?utf-8?B?ei8ybVViUFNrV2pvWUYwRDFDYm5rQkFGMDBiN2c2OVAyZmtSaklhOU9tTCtO?=
 =?utf-8?B?ZkhwczRCNTlSdlpLRHpLSE9kekc4Y1Nla3B1Z2grRTVrUEFNQUpUS2g4YzZU?=
 =?utf-8?B?TnQ3cDBzTS8zRTRZR3o2TnNOU1U3M0V1Z2VTNHllVUtPMDJXKzlRbEE1VEoz?=
 =?utf-8?B?d3lySDVOVGw0eUdKd3lRSWh4bGZOajFidUxTRUN4UEJJSzdlUlM0WEpvOFRV?=
 =?utf-8?B?aVdxWDVPeTQ2bFllbVQ0UmRKc2VNN1YrY2wvWC9PUWFwN0lhQlpFdVY0cXh4?=
 =?utf-8?B?RnF2OUh6dDEyN2RGUEVkS3VjK3FDWG51Y044T1djUkNKVGdXeUJFSThNNHpI?=
 =?utf-8?B?dm1xS0x2YXJRd3Q0QUxYQlZCNzVIbUtobXpwWmVnbUxTSGhRcmhvcTV0S0ll?=
 =?utf-8?B?T0tkV3Z3aVBWS0p2d1V3QUVaQUZqS214THBjVGlOUUNnOHlzRmJPbGtDNHN4?=
 =?utf-8?B?ZEF3aHZwSUFQODFNdmhtV3Z3am9rM0xWZWZ1UWNrZlVKVUdYdTJYVk5lcEhV?=
 =?utf-8?B?YWMyRFVJbzByZHhpTXpycm5OWFA2WTREZ2hVVUxWSm9TaXVjeDZ5OG9hZHox?=
 =?utf-8?B?eDUxelNjdU5Kbm9vclh6cnB5MThKbklpYnhtWmJ3VjgyRzJ2U2xwbk1mSVVk?=
 =?utf-8?B?aVY4Rm1PRVpEQjl6bHFsWFcyOTIwOXppbkt2MzVHRW53dC84N1UwQ3ljK3lp?=
 =?utf-8?B?TzlrQVlsUmpYcDNIRlphbWVhbFFmYWNRTnRNYVd0VUM3ejZBcFZNMkJUOXlt?=
 =?utf-8?B?RFQvUjc0MEtLOVBCZmpjcnpCR1pWbURZWitLdmdpbk94Yzg3eHduOWxwbHcr?=
 =?utf-8?B?WFZDM01LVTFueGp2MlBTT21VbS9LUjVuNDRmczhLOTkxR0g0V0lCenJtaUtB?=
 =?utf-8?B?UG01bmRtNXZ5cTNzTjNKZFhjeEpuS0tTVi9uWmxKYzVHY3BTNElNQzZaMzJk?=
 =?utf-8?B?bEhOSmFnSk5XWE8rM2pxaXJ6K0lnVHlVbU9rNStVT2gvaVpmWHQrQWhkeTND?=
 =?utf-8?B?V0NBbGo4Tlp4T0FlZGM0L3RnWjcyeFoyNVlWYnJ6NHloL0NaTHJmc1VHUHpl?=
 =?utf-8?B?aDZhV29ITGxvVk9RbEs4NVNNb3h6ZFFxUVNza0V2b1ZHYnVoS2xURmJhbHRG?=
 =?utf-8?B?TFJZalRaMXUxbnFLM1VVa0dBdUdMWEsvK0U3TDM0cnhVVGRVL05nVUZjcDc5?=
 =?utf-8?B?MG5KK3VHYTJRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB4262.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzgxQkRQRjRBOTFWT0E1UFdZTml1RHhuT05aQkljUXVrclBoSytwcnJGUXk2?=
 =?utf-8?B?M29ZOGpjSGhTUWxvcnhhcjBBWGFxazlzeTJpby9xY1JsMitKNTdKV0h3ejJ0?=
 =?utf-8?B?dVluR053K245czFGWi9NUGorMzNidnlUN3FvbUdHOUoyVnhiM2YraENiTXhz?=
 =?utf-8?B?N1NXZDJXa2RRVXp6Wm9XYk1zcDc0cUJ3bXVIWHAxQ2p5elo4ZlRrY3FMck9r?=
 =?utf-8?B?WTVSS1VDN3hFVDhZNk40S2s4SDhFSTVtbHFrbFZ0Y0YrVzJENnpETXRlZ2hw?=
 =?utf-8?B?cG55bVZuZ2F4YXkzVFdELzZXQmZaNlRCZUZqU3l4T2dBcFZQZUxaL1Z4bFZi?=
 =?utf-8?B?aVFJYlNvMmNRMlJuTmJCTk1FRURFUVdxMHBHejgrd0xSNDN1SkVramJqUXFi?=
 =?utf-8?B?TzJLMG1maHdDYlNDN1dMaEhIa0NhSmlhdnF2d3N4b3FsYkcvcnMzMUdLbzMv?=
 =?utf-8?B?RHFBNDJ4eXJrbDRQZWhTSmZLNXhjeE9sd2c5d21ieExodm4vYjJvSHBlK3I1?=
 =?utf-8?B?bTUrc1UxVExRTnUvdkNhZVVDWmQwclVlWWtFdDZscmIzUFZJOGNkendEVUhP?=
 =?utf-8?B?LzdEc2tTajJhYmwwRjVjZmVDazJ5Q3diTVdUam16N1ZUYXlhRHNXb3hmeXg2?=
 =?utf-8?B?Y3RXU1lQQ2hLVkFXMFNSQ3l5VVpEUjdCaXFaa3JCeisrWmw3aGRnZWV2MEVZ?=
 =?utf-8?B?WTNKK1FDSXhvb1RjUHJwbkplUm53M01iN0xoYmlPeEFnS0xCVXJuYXc5TVZC?=
 =?utf-8?B?bmZqWUZxOHgwaUEvaFdaU0JXZ0JCaHFCYU54MngxaHgxKzZyS04wNWsySXYw?=
 =?utf-8?B?am9wTWtKYnB2UjhMS1BHTE82SDEwaGNZMnpKQWlXVE9hYnErd0EzS2daSkxj?=
 =?utf-8?B?VzlnT0NDT3E0bTVzdzJQcW43OUV3ZXpFc0hpbVFCaTVLcTI4WHk3RXY1L0N1?=
 =?utf-8?B?T01uaWdIb2llYlV5eURPVmxINWhYa0pHUUZ5cVRLcm1xcUZnY2Jpa0doNzl1?=
 =?utf-8?B?QWlidmpVOGJJS29leUFNeUhFUlE0VnFmek1MVzhTaVM3ejlYb2ZLbTBpVDJq?=
 =?utf-8?B?WVY5QzFXa2kyUTR3RTRZUE95bVBvSE5kZlhZWVFQajNqby9WS08zelBJMDZU?=
 =?utf-8?B?eDZCYnZ2ZDZGV25SWXhYc2dTaUJaT3JRZ1V6WlNRZFZGdThacDJMeXNwd0dQ?=
 =?utf-8?B?SGprWENPWE9DVkM1TWc5OU5LMDZweWI0aVhYZFFTMER5bytQNCtEaUs4YWp2?=
 =?utf-8?B?QXFnN2xBeUdRZ0RsWVJIdklnaHdpeGprZUZNY3BCQnBxcFZUaDlGWWNVOW1Q?=
 =?utf-8?B?UUFta2JGVEh5NEJ3NS9uekZyaGtNYm1FZFBOVE1mOVNpQTlrOGo1d1ltY0ht?=
 =?utf-8?B?SjZ3L1NVZnRUcDVtSEl2bEU5WGZmN3N2K2dJc2lBUTBsSU9BamVBL0U4KzNY?=
 =?utf-8?B?VXFMS1JmRFE1NDNQK1dJdk9wYzJsbldLWmNJbmxLVy94WlNnUGlTdnFmb3kx?=
 =?utf-8?B?cTVxd05jT0Z0NDhpWkZ5dDF0MmRXcGlUTmdYbC9VaXlkSUROelVQS3VxdDVv?=
 =?utf-8?B?U2JZV1FweGdKMGV2NWY1ZjlEZUp5RnNVcUdveGlmZlgraloxMlNKTU55Tm5E?=
 =?utf-8?B?NllDc3FZSTJySzZJZDlYWk9YZU1TcmdMQjZYM214bzF2YmJxSTNJaHhNZWlk?=
 =?utf-8?B?MHdaOCtGWU0zbFlvSER5QWhaQzA3SWc5TUF4Smt5TXVLbTFwRSs2ZGhMaDU2?=
 =?utf-8?B?dW5KM3I2VGNSUEw5V1psUFVHMlQ2QjZHVGlxbCtqK1paRmhac3RVcHN3UkFj?=
 =?utf-8?B?RFNUaXByVlF0cXpVTDNZUXVOTGdqeUJJcitjREo4N1hLNnhZTDhOOXFmNlVp?=
 =?utf-8?B?cUVtb3pyRC9kZ1B1RnRneUxZWmFuWUJ6dFhNTVowTXVTWjBQb1J5OTh3WE45?=
 =?utf-8?B?UlprVXNwUGhXaTdVVlQzYkcvUnk5SFI3K1l0UUxPQWI3WWZpK2Vvb3VncHps?=
 =?utf-8?B?L082aDBIN1IzcFlMbGczVkdhN3ZrbHhjSUlGb09SK255Q3plY0JuK2pqcVBl?=
 =?utf-8?B?R1RHWDdjVklzTG5KcTJQVzlocFBxSDYrL2NydmxQMUh6cXdMUWRvMjVjaXJa?=
 =?utf-8?Q?kS7Z0DAydqCgmtS2TncYkKCdu?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 553dcf06-1c8e-4123-423d-08dd7d8f3568
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4262.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 09:06:59.0141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MNIaXDYpVZFpqNBy/O4fA8PvIufVu6HXir1nUTpHg4q8e165xbQOp73UHsIDZvtAbxfjWSMOpN+rJ4F+zuD87g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6243
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/17/2025 2:17 PM, syzbot wrote: > Hello, > > syzbot tried
 to test the proposed patch but the build/boot failed: > ... > [ 2.455556][
 T9] [ cut here ] > [ 2.455556][ T9] WAR [...] 
 Content analysis details:   (3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.237.63 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.237.63 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amd.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.63 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.63 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5LRY-0006o5-Cw
Subject: Re: [Jfs-discussion] [syzbot] [mm?] WARNING in move_to_new_folio
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On 4/17/2025 2:17 PM, syzbot wrote:
> Hello,
> 
> syzbot tried to test the proposed patch but the build/boot failed:
> 
...
> [    2.455556][    T9] ------------[ cut here ]------------
> [    2.455556][    T9] WARNING: CPU: 0 PID: 9 at arch/x86/mm/tlb.c:919 switch_mm_irqs_off+0x686/0x810
> [    2.455556][    T9] Modules linked in:
> [    2.455556][    T9] CPU: 0 UID: 0 PID: 9 Comm: kworker/0:0 Not tainted 6.15.0-rc2-next-20250416-syzkaller-04531-g07246f14ea38 #0 PREEMPT(full) 
> [    2.455556][    T9] Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
> [    2.455556][    T9] Workqueue: events once_deferred
> [    2.455556][    T9] RIP: 0010:switch_mm_irqs_off+0x686/0x810
> [    2.455556][    T9] Code: 90 41 f7 c5 00 08 00 00 0f 84 ee fa ff ff 90 0f 0b 90 e9 e5 fa ff ff 90 0f 0b 90 e9 76 fe ff ff 90 0f 0b 90 e9 cc fb ff ff 90 <0f> 0b 90 4d 39 f4 0f 85 eb fb ff ff e9 31 fc ff ff 90 0f 0b 90 e9
> [    2.455556][    T9] RSP: 0000:ffffc900000e7680 EFLAGS: 00010056
> [    2.455556][    T9] RAX: 0000000000000001 RBX: 0000000000000000 RCX: ffffffff816ffd4d
> [    2.455556][    T9] RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801b070940
> [    2.455556][    T9] RBP: ffffc900000e7750 R08: ffff88801b070947 R09: 1ffff1100360e128
> [    2.455556][    T9] R10: dffffc0000000000 R11: ffffed100360e129 R12: ffffffff8ee492c0
> [    2.455556][    T9] R13: ffff88801b070940 R14: ffffffff8ee492c0 R15: 0000000000000000
> [    2.455556][    T9] FS:  0000000000000000(0000) GS:ffff888124f9c000(0000) knlGS:0000000000000000
> [    2.455556][    T9] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    2.455556][    T9] CR2: ffff88823ffff000 CR3: 000000001b078000 CR4: 00000000003506f0
> [    2.455556][    T9] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [    2.455556][    T9] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [    2.455556][    T9] Call Trace:
> [    2.455556][    T9]  <TASK>
> [    2.455556][    T9]  ? __pfx_switch_mm_irqs_off+0x10/0x10
> [    2.455556][    T9]  ? __text_poke+0x6bb/0xb40
> [    2.455556][    T9]  ? kasan_check_range+0x28f/0x2a0
> [    2.455556][    T9]  ? serial8250_isa_init_ports+0x6b/0x110
> [    2.455556][    T9]  unuse_temporary_mm+0x9f/0x100
> [    2.455556][    T9]  __text_poke+0x7b6/0xb40
> [    2.455556][    T9]  ? serial8250_isa_init_ports+0x6b/0x110
> [    2.455556][    T9]  ? __pfx_text_poke_memcpy+0x10/0x10
> [    2.455556][    T9]  ? __pfx___text_poke+0x10/0x10
> [    2.455556][    T9]  ? __pfx___mutex_trylock_common+0x10/0x10
> [    2.455556][    T9]  ? __pfx___might_resched+0x10/0x10
> [    2.455556][    T9]  ? rcu_is_watching+0x15/0xb0
> [    2.455556][    T9]  smp_text_poke_batch_finish+0x3e7/0x12c0
> [    2.455556][    T9]  ? arch_jump_label_transform_apply+0x17/0x30
> [    2.455556][    T9]  ? __pfx___mutex_lock+0x10/0x10
> [    2.455556][    T9]  ? __pfx_smp_text_poke_batch_finish+0x10/0x10
> [    2.455556][    T9]  ? arch_jump_label_transform_queue+0x9b/0x100
> [    2.455556][    T9]  ? __jump_label_update+0x387/0x3b0
> [    2.455556][    T9]  arch_jump_label_transform_apply+0x1c/0x30
> [    2.455556][    T9]  static_key_disable_cpuslocked+0xd2/0x1c0
> [    2.455556][    T9]  static_key_disable+0x1a/0x20
> [    2.455556][    T9]  once_deferred+0x70/0xb0
> [    2.455556][    T9]  ? process_scheduled_works+0x9cb/0x18e0
> [    2.455556][    T9]  process_scheduled_works+0xac3/0x18e0
> [    2.455556][    T9]  ? __pfx_process_scheduled_works+0x10/0x10
> [    2.455556][    T9]  ? assign_work+0x367/0x3d0
> [    2.455556][    T9]  worker_thread+0x870/0xd50
> [    2.455556][    T9]  ? __kthread_parkme+0x1a8/0x200
> [    2.455556][    T9]  ? __pfx_worker_thread+0x10/0x10
> [    2.455556][    T9]  kthread+0x7b7/0x940
> [    2.455556][    T9]  ? __pfx_worker_thread+0x10/0x10
> [    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
> [    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
> [    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
> [    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
> [    2.455556][    T9]  ? _raw_spin_unlock_irq+0x23/0x50
> [    2.455556][    T9]  ? lockdep_hardirqs_on+0x9d/0x150
> [    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
> [    2.455556][    T9]  ret_from_fork+0x4b/0x80
> [    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
> [    2.455556][    T9]  ret_from_fork_asm+0x1a/0x30
> [    2.455556][    T9]  </TASK>
> [    2.455556][    T9] Kernel panic - not syncing: kernel: panic_on_warn set ...

This is some unrelated regression issue. Also, reported here:
https://lore.kernel.org/all/SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com
https://lore.kernel.org/all/67fce34b.050a0220.3483fc.0026.GAE@google.com


Thanks,
Shivank


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
