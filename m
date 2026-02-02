Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YC8UL1EagWm0EAMAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 22:42:41 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E4D1B59
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 22:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lj8fcLP8ma2rkLV64WJM1Xb3+WB+kx/kV1LP/Xr/8lo=; b=XZuWJEri9PvS3EgYbBcQ/BoGo6
	RKdloPfzq6+KaF+Nc65bZxK/xaj4haw4cVjJ8+kt0mozI1zZ75XulfCjpSfoumNUgIuqkFfd3cjpE
	yznRhy7k9+CFALXjgrEvhGisc2jyMD6we9TuQ3FkZh+AcTbXjitFr9Ogkea2yd/jRvrQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vn1gC-00047W-VG;
	Mon, 02 Feb 2026 21:41:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1vn1gB-00047J-Ov
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 21:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YSx8j/U0YMQqDX8sfyeru/jxcDpHonmkyVZl+rvzpHY=; b=MThDMWFwNjTkqr8s5i+FpB+0XE
 EkSUW+fhBZsPpZzSz3e195yaw53n3NW21asenTNrF9L/SfQLvQWotYys6BTq1RlHoq9Vg08aqoEDR
 b0Owq5y/ugDpUlQymCV5gOzttlsyUY6rBuP3VFGhhZlY9yzWn/A7XfkwhGJnf7LWgGKI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YSx8j/U0YMQqDX8sfyeru/jxcDpHonmkyVZl+rvzpHY=; b=hQVL+mzzJTlQECaP9eCt9AHEQX
 5JT9/PYwpoUBInTOmxjm6mT2ew1HUYTpOVRWqdjKT4Cmr6DEY55I9NZwzqIt4KfVevh5ThSPP92Pp
 YSXkuiDl/DRCwoFxiwgcnmpTGWxS0fiDWmRowR1E2nQZ4FDD+0LGmIJnlAZ7LORuvIBk=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vn1gB-00085I-W2 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 21:41:56 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 612IrTlM698496; Mon, 2 Feb 2026 21:41:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=YSx8j/U0YMQqDX8sfyeru/jxcDpHonmkyVZl+rvzpHY=; b=
 sAL6IXCoCt+61fW9/wGVJG2hO8CY6OBHw0l0nqwlbEuPTcaao2Zms0D97SNuipSz
 PxMJmONgTZQLPoAigH+epd4M/wrsy/Mvj+a1SWtx4YsCPs97/jFx/xh/ocO/t4tV
 GVZkeFSK6IJfF4/GJ7lIb8NF9Mv5kLO37WC2JBZU+Yct/w/Fk1COXN7nUgXDQAO7
 fPEbGBw/PrKABn5MIivKYNp852SvOjemPzq+HkRBxpxTXz/lNjZ7VqYBPlYYAk6Z
 cH5spWcki+gQYKWQwMBK1pqLtOUv+xFxCxHMItXhaAKzYDmXi3qgjL1+15aFvEJZ
 i9aDRrd4mOw4zDOoZkMhgg==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4c1axe32st-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Feb 2026 21:41:41 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 612LR3aL002064; Mon, 2 Feb 2026 21:41:39 GMT
Received: from bl2pr02cu003.outbound.protection.outlook.com
 (mail-eastusazon11011013.outbound.protection.outlook.com [52.101.52.13])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4c186kgd1h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Feb 2026 21:41:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X2KzX5xppt5ewr+dONJ3u+jX9OmaS+8CmUUf4AiXO48pP4JPlgJ2eHDWZL6PoOvLrVRxcicQ/4c67gR543v2/OCa3BswV4dFP6Y7r74830S8kcoEXt+YMvh54djDB3HqP189DwgbXW4rlu3AcX5vkF36t37wSgE/4felvYYaeSfw/Gs+Mv6l8nnJgv7kffoeh4WKRh2mzsP+taY9l9ij+DyScoZiigfl8b1LcT4XGDxg5dK5O9ZWBmpJozsHqNkyXTaa/X5GB/ZC5XH1k/h1J7+P7cP/ZprOlskoR1w2vyxcustz2ghpmVND36xzvTgoMqq3eefFuoFS0RhIpfBihw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YSx8j/U0YMQqDX8sfyeru/jxcDpHonmkyVZl+rvzpHY=;
 b=VLpgyo9wrPst5ebgwc9CH4rlG3+B8XaRkRjK+LzT35iOICWiF6iPFPV3k0FScgHBLp4Us7lc4t1kh1kxv8du4YaLmLqVE8ZLqe+aDpKXyd5FKWHTVeZUcXjhkKnDeXvHNY9Nb1XGig+UqV0h8ST2y/x2dUhfwiiFZSbqBJkrSRM6C0hdNccWkob63QJ9vs6sKvFRsJ3Xqrnb+0whfbGPp3P0jKm1gh9AoZue9PwTyE2xEI8D7lfoY2vroQDXjsyc+iL5QmAVdDc2TwJq4jinfTrE+IJvIhGYGGkl9ttOgV27mHiiKSBpyB+Bc+lzjX1SaUedgF4jdkhnTIIGV/zqAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSx8j/U0YMQqDX8sfyeru/jxcDpHonmkyVZl+rvzpHY=;
 b=DXPRD0J462c7WyKj2aXtFDnLghAwKGkczT0tpWEflR1m/8LWiGwkxHkqbN+ssxOl7UlLGnN92DTXtVg1wqQ8X5eTkunOvXx4nI9I9lglYR6SeeI29+nxMwEr8s8M9qGBQKd6hxut0U/NAOc0GaaB66pxHpXO7ugMnHTqYriW6wY=
Received: from IA1PR10MB8212.namprd10.prod.outlook.com (2603:10b6:208:463::20)
 by MW4PR10MB6629.namprd10.prod.outlook.com (2603:10b6:303:22e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 21:41:36 +0000
Received: from IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a]) by IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a%3]) with mapi id 15.20.9499.005; Mon, 2 Feb 2026
 21:41:36 +0000
Message-ID: <fb9e19bd-2543-4b83-9ec4-f595afd358c8@oracle.com>
Date: Mon, 2 Feb 2026 15:40:44 -0600
User-Agent: Mozilla Thunderbird
To: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Zheng Yu <zheng.yu@northwestern.edu>
References: <20260202204351.2174384-1-arnd@kernel.org>
Content-Language: en-US
In-Reply-To: <20260202204351.2174384-1-arnd@kernel.org>
X-ClientProxiedBy: CH5PR02CA0012.namprd02.prod.outlook.com
 (2603:10b6:610:1ed::11) To IA1PR10MB8212.namprd10.prod.outlook.com
 (2603:10b6:208:463::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB8212:EE_|MW4PR10MB6629:EE_
X-MS-Office365-Filtering-Correlation-Id: e9f1ff55-eaa1-4e76-dda2-08de62a3d740
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3ZtM2h4dHVZWmZ4U2JKbHJpUTZxd0twSFBuSUxtTFk2K0h4TFVaMnlFbWNo?=
 =?utf-8?B?b3dnUEh0Q2FleWMvNy85NjN1dk9tWTREd3ZSYU94eVZQZmtnTm5WNjhLK1lV?=
 =?utf-8?B?VFdDWGhhdEhsaE45ZzdTSGx5M0VyblV4NjV1RGVmQXVrSUt0dnZlQ0NIWk96?=
 =?utf-8?B?WGFqU3ZubUg5cytkdGIvRTlCbHQ2dmhoNExDUVFEYWhXd0I1Uzg2ejk5WUVB?=
 =?utf-8?B?MzBqRFNleGt0LzRXanlWY1F3ZVBxdXZwdTRHb1lSUkRudmlGM01uUjRId1FQ?=
 =?utf-8?B?d0xlaEt5Vzl1NmhBdkNQckxQUnJWTS8yT1JyTy83TXBjTW1yYzB4d0hIWU9n?=
 =?utf-8?B?RW5DNXVjeHF0L3V1ZzErcHZ4Q3FqQ0IyUDc5U2J5Q0UzVmphSE1jWjlrQVhk?=
 =?utf-8?B?c2xyV0VoQ1RoWE5nRllLNDRhQ0JIRC82UnhxYVcwMng1WUF6Y2dLMitVdmFP?=
 =?utf-8?B?bzY1NkYrU1dFNk1LWmVoRDBvYS9EN0dXMyswQmo5NUt6cXhMWmJvWnZOZURj?=
 =?utf-8?B?MngxUWVMU3RZN0JMeXpFQ2cwL3UzWjNjTHY2cnZtdlFrWDRjYmU1a2ZCdlFh?=
 =?utf-8?B?UzRiMFRGclY2b0lLR2EvdWtZQnh6WXFaM2JjeHdNbG1VVGQ5c2lnWXRRSWsy?=
 =?utf-8?B?djdYNElLNlYyeVZqdXRjWkE0cDFOeDJIaW82bThIalZxZno1ZUp6VXgxSEtz?=
 =?utf-8?B?RUQyV0I5dHgxOW54RHVQbUNNNEtwWFNXempxcXNtbnArc0dMbkJSQ1FsdlhZ?=
 =?utf-8?B?SUExYmdGNUtMd2cvaUEycnZ1aW5oWWNxQ2tmaHAxcFJ1SGh4TG9sK29lRlYw?=
 =?utf-8?B?TUJ6L01ObjFWcWNLZzVZOWpTK3lrYXhObU5IVW13Zy9jK1V3QXN1S0xrYWxU?=
 =?utf-8?B?MTZITG56Q3ZxcGtuOUNSaVVNWHFZaVdJVFdnUEF2TXltZlFmY1ZsbVBSbHdx?=
 =?utf-8?B?TlV0OXgzTWYxc3B0QUhiS1hzNTRKRVA0RXIyZ0YvMU1SZi9KNXhXZlNBbFY2?=
 =?utf-8?B?cFVMZW5JMVo1ZHp2MCswejcwZDVtUUJSUzBVUE9BV1ZrSGxtMWF0V0tWOUR1?=
 =?utf-8?B?dlJkSzFuMTV3clJQNXkvUzZEVkM4SDJQQTlHY1RrQnFIQStYVHdXSDJOblhH?=
 =?utf-8?B?aGljU2RzempqbWRwZlpKaDhzSVVXU3BwOVVRQmVXajJpUHNabWJhYXdZK0JZ?=
 =?utf-8?B?N2NvZ2pzMWtGcWQrSHVMYmVWV0FxT2VtTnNuVHMvM1VqbFpONVhKVlFYanNL?=
 =?utf-8?B?eWZhZkJ3WDFvNEl2d21DS216c2N5Y09GQ2RCcndxN2o0bTIydU5naWI2SmRI?=
 =?utf-8?B?U0dsOEx6WUx4Tys4SWFtNFJwZ010cU9ua3NCdE9SOXIwUzlPNWVxeGQ4cnc4?=
 =?utf-8?B?eWhxMUJhUHpzV25rNXN1ZWxJOXFLL2Z5VWpRT3Jid3JGRjR6TDVCK01MWWI5?=
 =?utf-8?B?eU5nZzRrUS9nMHlvalVOZVdYbDE3WVk4UmF1aFFKQjBONlpMM2hNRFN6cVJK?=
 =?utf-8?B?YkQ2bjdSVVFHdGlydHpEdHc4OGpxdU5KWTc1YUtTK21kM2o2RWMrVWtRYmgr?=
 =?utf-8?B?cEdHQXV3WnRuQ2lkKzJZRTR6dGE5SmhaT2hadldXUkQvK0VQWFVJSkhnMTNT?=
 =?utf-8?B?UUNBcDhpK3JhYzRIRFpVRmJMT2hERmFDU0huMW5zYkJNSGR2SEdaR3dyZjNw?=
 =?utf-8?B?M3htbmhGQXJUZ0QvVVpLNy9Zb0tKYzB3dzlvNTV6Nms0RVpNajFVTnMvMXQ4?=
 =?utf-8?B?YmpsVDhXblhIbVRqZng4Q04yNlJ0bCtqclJEa1dLeW5TUkl6ZXVQKzFiT01N?=
 =?utf-8?B?UjZvWTJjaDFxai9YVjFxREloQTMycUhaaGpOeDl3bS9ITHlGYmZ6eklGbmIv?=
 =?utf-8?B?a0EvdHR6WTFjelliZFFPc2Y1WjlibDRSdEh5QVJQaGI2Qmw2ekJZMmd3L3I3?=
 =?utf-8?B?TEZ3WndkWUN1ekZYQzRSc2hwK2grR2NmTzVZb0w1Y0dGbUtXY1U3aTVYbWhW?=
 =?utf-8?B?dytHOURWTVlsVUFtVXoyMmY1QlVFQkN1ZzVCWWJ0c3BLcTlhQmRveUNvbEda?=
 =?utf-8?B?eVhyQ0J4dGxGZ1NaNmN2NHJVSEUzNEtPcFRReVFkN2xEQzVNUjFGdElEbDhX?=
 =?utf-8?Q?haVw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR10MB8212.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXpyeXRudU5tUTcxSlVrL3VEaU5takhTM0Q1eDVBMXhQTWhJWGVEb1NKb3R0?=
 =?utf-8?B?KzdpRm0vYlROT2NHdXFqSzVyZzZ1LzFlZ29oekhPMi92cXIyVVkxZHJ1TXJR?=
 =?utf-8?B?ODlMQzczMTBvT09ieEU3M0JGSGZ3bTh1Y3U5M2FRSnkvVlJtS3VuejFJRzBh?=
 =?utf-8?B?YktWZnF1VTVvVFQvdC9JNkVKSjdtbVRRdkhlbGtxN3orRDdxSTlIQzNJRStI?=
 =?utf-8?B?ZFhRUFA0NUdLM1VZL2lES1I4d3F5anRtQlUwcUNxdC81SkFRKzNUZWRscmhJ?=
 =?utf-8?B?TWVkb2JkMjRta1NzTVRrTlJCSERIazNlZHpCcHlrZzlrSCtycThJamNyNlhs?=
 =?utf-8?B?Um5xYy93OFk1Zk1qQlY3OGFxV2hUSTFka2lSaENWMit5N1RFcStwK0lPWXgw?=
 =?utf-8?B?ZzYvUFM5UFQzcWZJckZBQXZSbTZEUmRwZmdHOGFqTFpoQ05Ed1FCQk5aVW1j?=
 =?utf-8?B?dE1KK0FacnBpallxUnFPNTF2bUhDd09semczbUNTSnVmQ3NNSkI0MCtaMHlN?=
 =?utf-8?B?UUxrbDdmSVdTV1dzQ21mL0NybTNleEtLYWhaOU9DN2JkU1JFWkJ1ZVU1NXpz?=
 =?utf-8?B?SnVId2w5RHlZbnpsYTZpRnRUaVJXOFZWZXA3OWZRdFMyOG1vcU4xaTVPcitY?=
 =?utf-8?B?d1RidXk3bytIcERQODRLZ0ZoaHFqQ0FiN0E0ckhrY0Y3aitTaVlHMmZtN0R6?=
 =?utf-8?B?bDR4TlpQenNhNjBaSW9BU2gwcSs0RUhNVEpheEpFQ2haVWx2MWtGSWNkSmQ4?=
 =?utf-8?B?aUc1NGdJTWUxdXpabG9sNmUyeld6UnBQS3BtR0NWSnBCRDRCOVB5MHZ5cWlF?=
 =?utf-8?B?ZHQxazYxQ0Qza1JmaS85T0l5S2tnVTNXdHlxaC9zcEtHTkVNb0R4aWR6RFhh?=
 =?utf-8?B?TlVyOU5yMUo1U0J6YVppWTBrUXNXU2sxRWwvb1FOWlM2NDR0T01FK2J1Nkp3?=
 =?utf-8?B?Uk12c1lGS1JQNXpIRXpkT3E5ZHJZa29xd3VKZHpYTGlhL2QydmphYm85d2lS?=
 =?utf-8?B?TWlXQjJjMFc0R2hOKytSamNINnhzcVVvQnNiUXNnbkhxdjZTZHdSMTdlV0hp?=
 =?utf-8?B?a3hmTkMyT3ZEM040VUZDN09pWmtLbTJWUE9lWG5FcXRPRjNJTEMvZ1RYL1V5?=
 =?utf-8?B?YXltWlIwR0ljSmtVUUtVVDZ1MVJDMWs5ZzdvZUtHN251ZjlPMGtZbExYQ293?=
 =?utf-8?B?SW05aVEzSHUzRkRoVDMreGhNOVA3Y2wvMlFtNDZ6QzBITUQwTFdHcytNMjY1?=
 =?utf-8?B?amJGN0dSdG1jMlIrdWdCTTlmUWhkNDhPWTVGQTE2VlJZdktyQUc5bFB3WkJR?=
 =?utf-8?B?alc2Y2p0Q3o1VEl5dG9iVm1YNmpoOTJuWVZDNlBUbWtWYW85WEVsZ3VpeFlJ?=
 =?utf-8?B?YTFYYWZ0bXF5TmJZaFdhN0E3TTM4Qkw0K1J1TW9IbThENktVdHRGVUtBSUkz?=
 =?utf-8?B?NXlScFhzSEpqRnh4V1hCZ3FlcGNBR0FQMnFNcm54SkNqdjEwTlNZQVhlb3Vj?=
 =?utf-8?B?dHkzRXU2QXBnZ3FUNDlnNDhBcEpxRjR5aHUrT0t2RTFQQ0RXdGkyOWpCVlBC?=
 =?utf-8?B?QUs5OSsvM3krREpkZnp1QXZ0TUpKL0Z6cnkyVmlFeEdUS1A4THV6bmVKLzY4?=
 =?utf-8?B?N3FyZWJsL3Jvalp6YWM2RXQ0WTIwMmVHcStKeXFKQXdaMU9mc1VmN2JCOUVn?=
 =?utf-8?B?Q2Vtamcvbk9rKzlPMHhNUXRSRnYzTU5wOXlucEtnT1A4NnhXdmJ1QUlvZzZG?=
 =?utf-8?B?VmdnUGE1VXAxUmN4S3pZTUNvODltRzUzcWRwK054Zlg2UUZWR29JcWw3bVc4?=
 =?utf-8?B?TEMwbVRIWGFlOXV6VVJtcWVManorSFkrT1NrRnhiVlJuVWczZUhKaXFmcHVK?=
 =?utf-8?B?MXBpZDlNbXY1VGZISnQwcU9qaVBxNjVNL1VwUHhCcEExKzhaV3FuOTg3NUtR?=
 =?utf-8?B?L3lYbEZEYjA3aUZpRUZ2NWJLUmtnUzJibzhaRTFVcXU0ZFlGNkZCY1pnQWt5?=
 =?utf-8?B?QmNkeWhWMy9RY2VQYVZPeGxMTmc4aGRkMTVnVXpjTGdoZWV2OG90TkNIaDR2?=
 =?utf-8?B?dnMxVDRDVEtFU012cFNSd1IxcVh2R2FGOXBzZTBCQXA4czZEdDMvOWdUaHdJ?=
 =?utf-8?B?aVc4S0JnUmw0SUFwWm1DanRHYTFpZkI1aGE1MnFVQldhdDhZT0FsbWVkTll4?=
 =?utf-8?B?dFEzRTJCY1RHYlFxVk5xRFp6aWgwVU4wcW9VTnRNV1RXZVdFMzlUTnc1M0Fj?=
 =?utf-8?B?M1RRdFFsc0NxYVFFcXdqc2JSdXRKREc3ZVVrR0VnN0h5emROL2gyY1g2d2tS?=
 =?utf-8?B?aUxUMW1zb2g2RGNoV0pqV3AwVjFicUZzUHAvckZKSElrYm0rUzZZZz09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: FhUujbkoqdbUH9mHGQIVCTI7GMKYSaH7MHVm7t4TGHGLu6SizqaCmnj7WPVHJFwTWXa3f8QdIlDD/ljcLKUMyWMAlfSOSlmT9kBX+zHwYW9OfIPdlUWCp07+zjbkFhq6t/M8AmucMjZzfRRbDAU+00jihLkYBU5nFy1S4SSgzqdzCjarQmSUDWw4vbDhHaCgBwUEiGkOYvKfpHJVm22ikswnnl4VqtyqZOrpY6M9eA2ntjwizda0zth/7RVBMRYdj1Pev0GeVe1SubmPMN/+t9lrVXgiAozG1egEtOiOe8m5wNZdo6idMf/1RDGfuWTz/xL/2h41yzhFIhC38rh+Vx6CmUB74nADp7cW983rArii/oFz1Ct5ptNdoC2yfS4vnQujv4sJA3dZTeuMTah2sI6wDhLvPdCocttHK4to5lUkcdTBBQtmckkyGRu82VRLg8UTHKX5D0jQfyNhuJ0hOgMl5r7avndKQUHSgpg1Lm/d+jVlvreBx+O5H81XefAA4Ibw/vgeeQRAHFmXVdWLMexzC5PllLIGUU03WnBVXCE2HNCSX0qNZ6bywR6CtWBSRl6lBDHftslI97oR6n1DVFyxUyu7HwhdOkaybd/BaXo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f1ff55-eaa1-4e76-dda2-08de62a3d740
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB8212.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 21:41:36.6262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yt8Rrv7N5LfYsX7Nou2X+rd9+TJPTHmBXRKvVvPGCRGZPqHjpDheGQ46YgfBVpIt48Ug0PdqC5Q5cCQVDF/fDgX5JWE2lievvCMPR11VUoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6629
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602020170
X-Proofpoint-ORIG-GUID: kNP17edBcLyYdbxVWN5xJQ4rzEpgfHEF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE3MCBTYWx0ZWRfX7K4AnKf/zPKO
 EOAYX0eY2Xsqu0o5QeIUI8l4CACpkHZoblT0IbulXfl668AArx7j2A1RJtvXH6UjZPw+4cOBMUw
 bbKzfL2MTZVm+vf5gezJNQRDlwYEkE84gFzgfOui76Sy6kIqU+FoOA81/EwePAOe8WGCMOQzTaN
 ze/Qw/u/T8FA6wF+zXRWM+JJa14DCxbh4YJdO4mn3WQfpMogI9uH91VKdJQAGsSKbiX3vtvtGXO
 vd5Wq7wLFt16UnktLKXgAn1q8yOjebM/n4ndzcWn9sREjdzkjzn41MoeZPig68CRc/UggYGAIVW
 fYq0Dl1WsFR5nxbFB0T0Iybs49wek7i9lq+NMLwx8M4PsBSaSACNj5Ni89yPvBWlznzWF4S+vh4
 ujFWliUgxlZhFve01sRBbOnbZfDliqIcvAZzL2Rs/3GTPe4JBVecNDIVc1PAiyCkwCJCovzn46e
 O3xR0iIJw6nwHmmNcmhqi7L2pCtFpH+3HEcEOWKA=
X-Authority-Analysis: v=2.4 cv=F5hat6hN c=1 sm=1 tr=0 ts=69811a15 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WmfX0Ep4EwWLics8V8IA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12104
X-Proofpoint-GUID: kNP17edBcLyYdbxVWN5xJQ4rzEpgfHEF
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/2/26 2:43PM, Arnd Bergmann wrote: > From: Arnd Bergmann
 <arnd@arndb.de> > > A recent change for the range check started triggering
 a clang warning: > > fs/jfs/jfs_dtree.c:2906:31: error: result o [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vn1gB-00085I-W2
Subject: Re: [Jfs-discussion] [PATCH] [v2] jfs: avoid
 -Wtautological-constant-out-of-range-compare warning
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
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: jfs-discussion@lists.sourceforge.net, llvm@lists.linux.dev,
 Arnd Bergmann <arnd@arndb.de>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Aditya Dutt <duttaditya18@gmail.com>,
 Roman Smirnov <r.smirnov@omp.ru>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arnd@kernel.org,m:nathan@kernel.org,m:zheng.yu@northwestern.edu,m:jfs-discussion@lists.sourceforge.net,m:llvm@lists.linux.dev,m:arnd@arndb.de,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:duttaditya18@gmail.com,m:r.smirnov@omp.ru,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,lists.linux.dev,arndb.de,gmail.com,vger.kernel.org,google.com,omp.ru];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arndb.de:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,oracle.com:s=corp-2025-04-25,oracle.onmicrosoft.com:s=selector2-oracle-onmicrosoft-com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[jfs-discussion,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[dave.kleikamp@oracle.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,oracle.com:-,oracle.onmicrosoft.com:-];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A86E4D1B59
X-Rspamd-Action: no action

On 2/2/26 2:43PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> A recent change for the range check started triggering a clang warning:
> 
> fs/jfs/jfs_dtree.c:2906:31: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>   2906 |                         if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
>        |                                            ~~~~~~~ ^  ~~~~~~~~~~~~~
> fs/jfs/jfs_dtree.c:3111:30: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>   3111 |                 if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
>        |                                    ~~~~~~~ ^  ~~~~~~~~~~~~~
> 
> Both the old and the new check were useless, but the previous version
> apparently did not lead to the warning.
> 
> Remove the extraneous range check for simplicity.
> 
> Fixes: cafc6679824a ("jfs: replace hardcoded magic number with DTPAGEMAXSLOT constant")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: drop the check instead of shutting up the warning

Looks good. I'll put this into jfs-next.

> ---
>   fs/jfs/jfs_dtree.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 0ab83bb7bbdf..9ab3f2fc61d1 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -2903,7 +2903,7 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
>   		stbl = DT_GETSTBL(p);
>   
>   		for (i = index; i < p->header.nextindex; i++) {
> -			if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
> +			if (stbl[i] < 0) {
>   				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
>   					i, stbl[i], (long)ip->i_ino, (long long)bn);
>   				free_page(dirent_buf);
> @@ -3108,7 +3108,7 @@ static int dtReadFirst(struct inode *ip, struct btstack * btstack)
>   		/* get the leftmost entry */
>   		stbl = DT_GETSTBL(p);
>   
> -		if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
> +		if (stbl[0] < 0) {
>   			DT_PUTPAGE(mp);
>   			jfs_error(ip->i_sb, "stbl[0] out of bound\n");
>   			return -EIO;



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
