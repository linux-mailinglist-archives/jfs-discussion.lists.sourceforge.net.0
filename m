Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E88FA96759
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 13:30:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7Boi-0000iB-SF;
	Tue, 22 Apr 2025 11:29:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u7Bog-0000i1-RN
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 11:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WCH5QZR33B9a8a+VrlDF3zcVZHlnc5LUXgSrEskeh4k=; b=UsSxWxr7I9h2JSadVDEbwRqrcl
 9lznOXrgYvEFIbcITwhvw23aRQ+v/jkvMpNn5jDAQ+RI/SD67Jw7SWQcVouLqL/R4ba33CRo0Ia93
 QV70udb/2JAOR4IfiypXocRd4PG75zeqVL6ou3ZTrvhLnJyXKJMRVFcyK+eTp2OxKXuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WCH5QZR33B9a8a+VrlDF3zcVZHlnc5LUXgSrEskeh4k=; b=awvukJgb5nJAO7wdajyiDYtPLK
 uF718clX7EgqUDt50JhnHZvs5B5/Bxs30QqR73JwYcYqxiIWVjErxFE/1J5qvcGZRkR0nfFB/DQ+z
 xH71xBZ3IKaVtGyIwaXpQcf5ovexVdXrfZboY3/2k1csHPt5afOy/Sn8zvlXu+wexN3Q=;
Received: from mail-dm6nam11on2050.outbound.protection.outlook.com
 ([40.107.223.50] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7BoP-0000Cw-Hd for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 11:29:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JBNULV/ld6xup0WBahETC/36CjB1Uqg/6QS/qvnGKV1NJsGoGt9n7xgRDnWdezl0Sj0ZnP0x11XOp+J/1VbO5Gc4bYFFGwijxJ1xQYhv+crOk5muPMEg0Rp5GhP82Zu472Zdb2vYIucb7hEBkLUqoEszKWhZyGf52QHzcoN/TkJDkY29IC7EMDBBbMYGM8eEqXASGaG1wCDi04i6cccxdBzEC7LE1gvFtA7ZLhn1dDYMp431eMWf1rrA6/dbVbk4PjC/IIVV+tzTa9IO5/sZUzxrlXL9q7Sf5h1uG0oPHW1bZzqt3TkrRmKsRGbJbPVgweLZa5mUGNJv0RAhNcK9cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCH5QZR33B9a8a+VrlDF3zcVZHlnc5LUXgSrEskeh4k=;
 b=lgI8RwwXupov+Op12TmTkqDA14ctRhtn3k380ChWwvOwlb8zZnSBLemUaJMrtcJvZFG+G4G6pLQtd1UnlQcHzQdnR52bFUi27My3F35w2prvNFQx9ANs0Sw5C4DFMKU+Z74zn5L2BgIqtRKXP5nfAC1teKz1G3qa+xScztSZfTyDQh3UUOzxi3qJDClI5jVMv0HmUXVUAOglzVsR/mmmPY/lVEs9nUnDv3q661kEL4Wyomsl0wxpfuCH6BJfnjf7yziq446sBDmeoDEOE/eVi5KCQtDGStN6R9cDn5KmsrKF9rGvpnJqf0o8wNHz2RradVPDTMDIC2Tl2yQd0p2FIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WCH5QZR33B9a8a+VrlDF3zcVZHlnc5LUXgSrEskeh4k=;
 b=b1lYm3cwgpuIoB26SK5FZaWMLSpBorKPK2t9rlP2JvcBPCPJypXQicx2Y18hs12fdvNMEjeJPAbiaFyHIx03OHPY9qV5NidLZZo+EKsrUE2fRwz/XwOLsGqhbvH58NVBB2TKUHyB+7Jkh4xPZPM6s6zPT6A+7j16poRSc2RHTBg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CH2PR12MB4262.namprd12.prod.outlook.com (2603:10b6:610:af::8)
 by BY5PR12MB4179.namprd12.prod.outlook.com (2603:10b6:a03:211::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Tue, 22 Apr
 2025 11:28:59 +0000
Received: from CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870]) by CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870%7]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 11:28:59 +0000
Message-ID: <03495e46-234a-4c0d-bec7-f7325789a160@amd.com>
Date: Tue, 22 Apr 2025 16:58:51 +0530
User-Agent: Mozilla Thunderbird
To: David Hildenbrand <david@redhat.com>, shaggy@kernel.org,
 akpm@linux-foundation.org
References: <20250417060630.197278-1-shivankg@amd.com>
 <20250417060630.197278-2-shivankg@amd.com>
 <75dc1299-8a83-4ce8-a715-cf1a8d43e0f9@redhat.com>
Content-Language: en-US
In-Reply-To: <75dc1299-8a83-4ce8-a715-cf1a8d43e0f9@redhat.com>
X-ClientProxiedBy: PN2PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::34) To CH2PR12MB4262.namprd12.prod.outlook.com
 (2603:10b6:610:af::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4262:EE_|BY5PR12MB4179:EE_
X-MS-Office365-Filtering-Correlation-Id: e3d17b2d-5d8f-48f2-bea1-08dd8190dfc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODBQRk5Dc052TGExekVmUGxNYTdOYzEwMTBnbjQxTGNOeCthSmVPaHBaaHJG?=
 =?utf-8?B?RnZUbXVpOVlScElvZ3RLNTVQKzl1NEw1SUlEeGdlUGpPbm96a05sTklhMFFv?=
 =?utf-8?B?TlgydnBpaFc3TmtrMFhvbDZ6MmZkQmJlNm82NmhYRUFRbG1JcmhSQ1REY2FI?=
 =?utf-8?B?RkRPY2lrRTVDVDVBNjZGOXd4SEc5Wkdqc2NncHE5OFA2eGlyL0UzbjdRWC94?=
 =?utf-8?B?UW9KZWdaYTh2SHhDWVg5ZlJra0JDbjkwVjQ5eUNUdC9Ydlpqb1hnaTdzcDc2?=
 =?utf-8?B?Uk9DOUpGNGpPaVRueDNaaVJRNHN5a1F0TmN3MUoxeTlaaDUweCtZNnNxclU3?=
 =?utf-8?B?aTdINlVIRy84cUplNERJZlYzaWRIa3A3SlpxQk44M0FuT09XTVFBNVI3WTQy?=
 =?utf-8?B?MDBVV1BIbC9JMVlyTGhxR0Z1ZmFGNDA5cENwWCt4c0NMVDZPbWFpZlMwWUNQ?=
 =?utf-8?B?TkRRRmc5cTIzajRQVkxHcnd1OFlRdnQ0M3V4NVA2V0YvUzYrWnpjT0x0M3lL?=
 =?utf-8?B?RzFjbkNVcWx1cVdxb3FkZHM2UG5QQTJKNVRXcDFlZ1lEZ3JWQjhHR24weWNa?=
 =?utf-8?B?RTBJS2R3bG00ZnJHTmsvZkw1QXNtMFV1M25wVGtBcWJxV1NpYjlFVkp6SVNa?=
 =?utf-8?B?YVp4SFNyK3RtUit4TmlFcHkxdkFqSGo5UklPaGl4NStyK1VIaCtxQVFmYmtu?=
 =?utf-8?B?UnBrVEE3ZXdvOEFzb3BYU2lRcjdBbFFnVEJTenVMRkI4MlEzTENXOElkc0JX?=
 =?utf-8?B?ZE9VQmtFTmtraGhXUkVLcEViWlpwTVhMUjlvR2twZlBETzdZUklHZGcvL3Jh?=
 =?utf-8?B?VGoyYnE5Mmp0YjlWbXFBVE95akxtR3dNSHFIU2xQeU5GemtmTWphRExHL3lr?=
 =?utf-8?B?OUc0ZCsrVS91L0Fma1BCZmRQaGJyK0xOd0JuRzF1NnBPY0ZaQTd1QXZwdXhw?=
 =?utf-8?B?STZKU2RUczJpeFV0QnRmc0hod1VkY2hsaklUWVdBSllDWTk1REVxM1ZPNnk4?=
 =?utf-8?B?QUpyanlqdnh0bVY1aDVWS1JwNjBua2x0RlE1NTBMalFqN3YwVkduNzM2UEpO?=
 =?utf-8?B?QnBHbDhYRE9hRU93aFpGanVaZkxtbEJjcWFzak9WeWIvMCtoNDdyMlJEOS9q?=
 =?utf-8?B?VWdJdHQ3bGlxV2tJL21IeDNBaDRqWEM0OS81TUhqOVh2OW1hd215VGxudi9R?=
 =?utf-8?B?S3ZFekpBTUl3RG5xMHhiYnp2T0s4QVN4d2ZUQ243T1FXQ1lscTBwU1NiWENC?=
 =?utf-8?B?UWE4aWpMSUVFc0l0aHpsdmZkU0JWR0RvaGpUSEsybjVRS2N3d3N4ckEwZ3hW?=
 =?utf-8?B?Y1hUTW9BYk8wYUVOWmJ6Mm0rbGJLbVpIYWo5RGNkcXBsQ0RZVkpHWDRLV1lV?=
 =?utf-8?B?QmVrbTh6SWlVWkZBelBnMjdFZzREcnlPa0ZtUzRucThORG56SEpOSExWZVZ2?=
 =?utf-8?B?UEJEbWVtZHgvYXJ3WFBPclVsOU1qaWxWVXdTOGc0cXFNMkFRQnZjS0pyRi9z?=
 =?utf-8?B?MkFYeUszM3grNy93RHdpMHcxMDJhbk42NHVjd1JmMVVIUVBTSXRlWTY3dWhT?=
 =?utf-8?B?ZU56dlY3WFdhWGhVMi8zZVNwUVhHR1M3YmZSQkN0WVpSbStucVJQOEduSDdI?=
 =?utf-8?B?YWNEdFZBeE9CcURqVk9HREdTcDRSN00vV1NuN3FqanRwbDJGZThFUmV5SFdS?=
 =?utf-8?B?ZE1TWnFhV1FwUnhJMjhESnJ1TGdvUitmVldCSkw1aDc3RkRMSW16WlAxOVFF?=
 =?utf-8?B?bEhGWHZUOVN6QmJaSVRMZTJsblBsYUM4YUZIb0xBOUtZMDlVUngzQ2ZXR1Zl?=
 =?utf-8?B?V3RJK2tISzFpYkdhSDBhWHNSQ255Ylg0MHBMeGZ6cXUrQmhnVVlKN3ZnU2lh?=
 =?utf-8?B?NHdQNWFVdUI4V29xUlZLWnhCZDZxRVFoZTA3SlB0d01BRkVFT0lDVGozRHZR?=
 =?utf-8?Q?RKaNzQm5qr4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB4262.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVppQlNwZHhIMGVBdUswMUpZQlVBNUFUNGkrcklsOGdNSE5jcEplNm5OQ3Zj?=
 =?utf-8?B?bFlCeCtoWU9pckU5Yi9vdDRLTjJDM0pWYS9uY2NhcFdadmYydldXRDArb1Ev?=
 =?utf-8?B?dDR0M0RBTXYwMkNTMi9mYXNDZG5wRkc4ZTFDT2FLNldObllvMUhmSW5KbG9Z?=
 =?utf-8?B?RmZla3o2VC9BZ1pTVVR1R1YvQUJWTjlaNU13dURjSzYwT1B2TUJpbmZlVFZM?=
 =?utf-8?B?SzFRM05QOFlpK1hmdjU3dnN6ckVKcjZwa0xDZDVrY2x6b01kS1RZUnFmSTRZ?=
 =?utf-8?B?d0gyU1VsQzRWRXY3NmVPdjI4L1NIWnplRmZqd3JndncrclZuNXFIbEdic2w3?=
 =?utf-8?B?RjV3eW83NzVWcG5ZMGxqbXk0Tjl1cUd2bUZEZCtzMGFFblZ2dlplamtXL0cw?=
 =?utf-8?B?N0NaM21SL2tsanpHSmFqRStIU051bmFRNWk3b2VBQTdGSWJTZWNmZ0RiOVYz?=
 =?utf-8?B?cmwrbnR2OW0vQzdJUWp5d1FHdi94dS9Ic2xyVkI5eVc3OXpRUGtlZDY5bSsx?=
 =?utf-8?B?SW5zYzh6RE9MOStaQndBSUNncDBPWnE4N1NoUFRkaGR3blAwRUNLZkR4aVN4?=
 =?utf-8?B?STdiOXJ1RjdES2dhNWRjTFBKUTVERSs1REQrVVdla014dkFxVjlTSnR6aElR?=
 =?utf-8?B?N20rTUZYWnZha2lTcEsyb0JxU0Nac0dDUUhCT2pvaU9uYkVzUmpKNzQxSzRM?=
 =?utf-8?B?WGpOWUhlSWNDa25JQzdzMjk2Z0tYWURURklOUHgrQ2pYcFlCbDI1emY1UHMz?=
 =?utf-8?B?eFlWcnBlRnJYa2pYQnI5Rk01L2xrWWFCSWlzcmRIT0owbi9KUUFmdkwxL0dw?=
 =?utf-8?B?RGljMnl2OVRCQ0JNTFBVT3VqZ2FEbmp2OTRSVWxqc3Y5ZXFEYWkvVEtadTdj?=
 =?utf-8?B?S0xuRUpoc3Q4VGM4Y2RvUWxVNmovQVY5SStka2NtclMyeDYxeTN3OWk5Kytj?=
 =?utf-8?B?WXRGd3lJQkQzZWhUVmJwTlNlTTVzSFQvN0VBdW5uVkJCYjVqWHBUTHlNVHJi?=
 =?utf-8?B?TzI2RkM0U1ZGRW55VFBmTmVJVU1BOEJybHlIZkMwMmw2dUJ5Zml4cHY3VUVE?=
 =?utf-8?B?Zm5QaGhkUmNycW0vTWsrbW1KT1RpZndtam5nZjZFMzhuWVYwczNUTlhOaXFn?=
 =?utf-8?B?UjFWNjRaSTlqUzRYd0loMVFoNTY3R0hZcGVFUlBQSXJQREFmQzlTODRyN2FL?=
 =?utf-8?B?blk0RGFnMlE0VXM0MWE0NGRzaFNzanRtNHM1ejZSeHVzNkdGdWI4MzNyUDFX?=
 =?utf-8?B?RUFENUg4TTFxRHBuaHFDVURkZEwzd1ZIdmJIbzV0QzZwYWZPZnUvVzE2UmdO?=
 =?utf-8?B?MEVOUTRQTXBweVF6Z2taOGYrNUdFOTBhK3BWQzBQclgrUDRHcFVXZ3pYN3A4?=
 =?utf-8?B?VVNJcElpU2Q1TE01Z29ELzZ0YytKbWFzK1cvY1FXdVZIWGdSVXM4SmNWNDV5?=
 =?utf-8?B?SkgwRUZnU3pVY3VEejFsTXJ6MjBFN2FLMUxOOHEySVZPT0tDbjhIRWxuWmpV?=
 =?utf-8?B?SFRsVGxTOTJiT3BRQ21YbHQ2Tm5qdGFNZU4zVEJpdTYxNVBFWjY2N0dhTktR?=
 =?utf-8?B?T21MWExEQjZRTUN6QWZLOWwwSHFkUHdsS1dlVi8vMDNnRGJCYjB2Um1VRkNz?=
 =?utf-8?B?bG8rU1Nya21BT0hPeVdWWU42SGFhRnJhTVNqVnBqT0JiaTJQRkRTVEFpRzdj?=
 =?utf-8?B?SEZOVTFSMGt4MDB4bkhnRmw0ejd3Q0h5Z01zS1hJSFcvRytPd0ZGcWJ5RmpZ?=
 =?utf-8?B?R0tvNjcycG1YK3lDZk5KWU5kdzdYdklpL3M4NmxKaENiRVpkcExLdzFxV1RW?=
 =?utf-8?B?NjBxWFljaVFuWERCWmtRTW1selFBbWkySWdubElPRktwdmo5NjJTeU1kdjVn?=
 =?utf-8?B?T25yTjdWUjBCSUU4TDhTMjV0dWtYRDgzc3QrbUFQMTI4d1djWlViSER0NC8z?=
 =?utf-8?B?R3djYXNOSndqNTJ2bXl2MCtKMlRjZHZHWVlUME50VTd1NG42UU5Gb2hCemdY?=
 =?utf-8?B?WkpUOW5GVTV6NjBveHNlN3FUMkFJbWE5R2lETmtsRzBvaEwwSXFaTVUvT0lF?=
 =?utf-8?B?L1hLMHJmbTRvUGRxdHdONkdsYi9VdVJhaFZyU0dXS1dTRmlrdU5EWTkyT29X?=
 =?utf-8?Q?dwEAAQPDCk0ojo4fFXaQHR8D1?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3d17b2d-5d8f-48f2-bea1-08dd8190dfc2
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4262.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 11:28:59.0543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cXShVweiVWPJkZpDe1Dxfc1kw0nOOJ9Nxvd1CaJbW4LhDEnSMlZ49z5hCOWsBrn+n60hdE96XJhPwRsGulLCyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4179
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/17/2025 2:10 PM, David Hildenbrand wrote: > On 17.04.25
 08:06,
 Shivank Garg wrote: >> Export folio_expected_refs() to allow
 filesystem-specific
 migration >> handlers like JFS metapage_migrate_fol [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.223.50 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.223.50 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.50 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7BoP-0000Cw-Hd
Subject: Re: [Jfs-discussion] [PATCH V3 1/2] mm: export folio_expected_refs
 for JFS migration handler
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
Cc: jane.chu@oracle.com, wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, apopple@nvidia.com,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

CgpPbiA0LzE3LzIwMjUgMjoxMCBQTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4gT24gMTcu
MDQuMjUgMDg6MDYsIFNoaXZhbmsgR2FyZyB3cm90ZToKPj4gRXhwb3J0IGZvbGlvX2V4cGVjdGVk
X3JlZnMoKSB0byBhbGxvdyBmaWxlc3lzdGVtLXNwZWNpZmljIG1pZ3JhdGlvbgo+PiBoYW5kbGVy
cyBsaWtlIEpGUyBtZXRhcGFnZV9taWdyYXRlX2ZvbGlvIHRvIHByb3Blcmx5IHZlcmlmeSByZWZl
cmVuY2UKPj4gY291bnRzIGJlZm9yZSBtaWdyYXRpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNo
aXZhbmsgR2FyZyA8c2hpdmFua2dAYW1kLmNvbT4KPj4gLS0tCj4+IMKgIGluY2x1ZGUvbGludXgv
bWlncmF0ZS5oIHwgMSArCj4+IMKgIG1tL21pZ3JhdGUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCAzICsrLQo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9taWdyYXRlLmggYi9pbmNsdWRl
L2xpbnV4L21pZ3JhdGUuaAo+PiBpbmRleCBhYWEyMTE0NDk4ZDYuLmNiMzFjNWIxZWI2YSAxMDA2
NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9taWdyYXRlLmgKPj4gKysrIGIvaW5jbHVkZS9saW51
eC9taWdyYXRlLmgKPj4gQEAgLTYwLDYgKzYwLDcgQEAgc3RydWN0IG1vdmFibGVfb3BlcmF0aW9u
cyB7Cj4+IMKgIC8qIERlZmluZWQgaW4gbW0vZGVidWcuYzogKi8KPj4gwqAgZXh0ZXJuIGNvbnN0
IGNoYXIgKm1pZ3JhdGVfcmVhc29uX25hbWVzW01SX1RZUEVTXTsKPj4gwqAgK2ludCBmb2xpb19l
eHBlY3RlZF9yZWZzKHN0cnVjdCBhZGRyZXNzX3NwYWNlICptYXBwaW5nLCBzdHJ1Y3QgZm9saW8g
KmZvbGlvKTsKPj4gwqAgI2lmZGVmIENPTkZJR19NSUdSQVRJT04KPj4gwqAgwqAgdm9pZCBwdXRi
YWNrX21vdmFibGVfcGFnZXMoc3RydWN0IGxpc3RfaGVhZCAqbCk7Cj4+IGRpZmYgLS1naXQgYS9t
bS9taWdyYXRlLmMgYi9tbS9taWdyYXRlLmMKPj4gaW5kZXggNmUyNDg4ZTVkYmU0Li4wZjAxYjhh
ODdkZWMgMTAwNjQ0Cj4+IC0tLSBhL21tL21pZ3JhdGUuYwo+PiArKysgYi9tbS9taWdyYXRlLmMK
Pj4gQEAgLTQ0NSw3ICs0NDUsNyBAQCB2b2lkIHBtZF9taWdyYXRpb25fZW50cnlfd2FpdChzdHJ1
Y3QgbW1fc3RydWN0ICptbSwgcG1kX3QgKnBtZCkKPj4gwqAgfQo+PiDCoCAjZW5kaWYKPj4gwqAg
LXN0YXRpYyBpbnQgZm9saW9fZXhwZWN0ZWRfcmVmcyhzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFw
cGluZywKPj4gK2ludCBmb2xpb19leHBlY3RlZF9yZWZzKHN0cnVjdCBhZGRyZXNzX3NwYWNlICpt
YXBwaW5nLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGZvbGlvICpmb2xpbykKPj4gwqAg
ewo+PiDCoMKgwqDCoMKgIGludCByZWZzID0gMTsKPj4gQEAgLTQ1OCw2ICs0NTgsNyBAQCBzdGF0
aWMgaW50IGZvbGlvX2V4cGVjdGVkX3JlZnMoc3RydWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmcs
Cj4+IMKgIMKgwqDCoMKgwqAgcmV0dXJuIHJlZnM7Cj4+IMKgIH0KPj4gK0VYUE9SVF9TWU1CT0xf
R1BMKGZvbGlvX2V4cGVjdGVkX3JlZnMpOwo+PiDCoCDCoCAvKgo+PiDCoMKgICogUmVwbGFjZSB0
aGUgZm9saW8gaW4gdGhlIG1hcHBpbmcuCj4gCj4gQ2FuIHdlIG1ha2UgdGhhdCBhbiBpbmxpbmUg
ZnVuY3Rpb24gaW5zdGVhZCwgYW5kIGFkZCBzb21lIGRvY3VtZW50YXRpb24/Cj4gCj4gVGhpcyBm
dW5jdGlvbiBpcyBvbmx5IHN1aXRhYmxlIGlmIHdlIGtub3cgdGhlIGZvbGlvIGlzIHVubWFwcGVk
IGZyb20gcGFnZSB0YWJsZXMgKG5vIHJlZmVyZW5jZXMgZnJvbSBwYWdlIHRhYmxlIG1hcHBpbmdz
OiAhZm9saW9fbWFwcGVkKCkpLgo+IAo+IFNvIHdoZW4gZXhwb3J0aW5nIHRoaXMgZnVuY3Rpb24g
d2UgZWl0aGVyCj4gCj4gYSkgTmVlZCBhIGNsZWFyZXIgbmFtZQo+IAo+IGIpIFNob3VsZCBnZW5l
cmFsaXplIGl0IHRvIGNvbnNpZGVyIGZvbGlvX21hcGNvdW50KCkgZXRjLCBhbmQgbG9va3VwIHRo
ZQo+IMKgwqAgbWFwcGluZyBmcm9tIHRoZSBmb2xpby4KPiAKPiBGb3IgeW91ciB1c2UgY2FzZSwg
YSkgbWlnaHQgYmUgZWFzaWVyLiBNYXliZSBjYWxswqAgaXQgc29tZXRoaW5nIGxpa2UgImZvbGlv
X21pZ3JhdGlvbl9leHBlY3RlZF9yZWZzIiA/Cj4gCgpUaGFuayB5b3UgRGF2aWQgZm9yIHRoZSBy
ZXZpZXcuIEknbGwgbWFrZSBpdCBhIHN0YXRpYyBpbmxpbmUgZnVuY3Rpb24gaW4gdGhlIGhlYWRl
ciBmaWxlCndpdGggcHJvcGVyIGRvY3VtZW50YXRpb24uIEkgZG9uJ3QgbmVlZCB0byBFWFBPUlQg
aXQgdGhlbiwgc2luY2UgaXQgd2lsbCBiZSBhbiBpbmxpbmUgZnVuY3Rpb24uCgpCZXN0IFJlZ2Fy
ZHMsClNoaXZhbmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2pmcy1kaXNjdXNzaW9uCg==
