Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C98B815E0
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Sep 2025 20:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5/yEk41TiN2c7cWirBSeTWkUCiw/satDj5qYOc0Yqf8=; b=Pe5bKj/btOWnokw75lMBwep7Gy
	LIrlwzBH2jy/gK8wSqKqwTEwLgv/tYq/VsSFKF0Z5fa0uTB71HY/MbzXf24cS3pWJy4MOb8RpyUiX
	rR0/dMn0zUnmUqo1QFwWL1Jqiwd+le2ERSkxp6uuA7XUUNrOHc0KSNogovgmcCvSRvz4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uyx5F-0006v3-IO;
	Wed, 17 Sep 2025 18:40:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uyx5C-0006uu-Uj
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Sep 2025 18:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wefw/KyZPbtIIribhU7UhEMJBVPx4WPNoIlrDZ9f8zE=; b=lpUD/vJvyr0vm/h3PnbX3HBXWy
 eZ1mDVMGgjXZMYHtt1bhBw4CldCx0aEFHooRgXlXrIWVLu49CtMCyx90b/pkYCdulAGj56v8/RU4Q
 hNFH51oPIrMWluTyoYKdUAe/6ijWH18v2YPenBP2A+Z82aa2wnwCrlAmQh9u50rwtC04=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wefw/KyZPbtIIribhU7UhEMJBVPx4WPNoIlrDZ9f8zE=; b=FL3e98PfHM27BqtiHDyOtC8IEm
 WC/tenDm3ilmP0LV0ZzBTcOcZCvGqE7EqweLIvo+YYne3V1Uf5FHmPRPZyldXKnfxVMfR7rC1ryRY
 V74n5kpiVRn8bvW1YX39PaRfgtW4waJaoT+ap6JGXJajJuLOMlEVCWeYKVdVYKblSNYw=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyx5C-0003f1-2G for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Sep 2025 18:40:46 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HEIUgG008308;
 Wed, 17 Sep 2025 18:40:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=Wefw/KyZPbtIIribhU7UhEMJBVPx4WPNoIlrDZ9f8zE=; b=
 GBurfbyn8xy+sUT/Ok6uQVuSiDc0ttuxkrfZIcAF0akk8fvKfnDxoX5yhvgKL5nT
 3+il7Xde8+S4INm3EnuBZs7E5jKXd6M3kYIRSF/Ua2hObe2bScnYUNIOGKOKyvuo
 gx5FjuGfty2pEFKErWAfmqalYbG0Vu7bkuDhWEUJ/RfNDLyo1ycQBUbQr0UGUiU3
 Y0aaGg7zbHwwSbfFsdy4tEoALgz07NOMBFM+ik4QlC/QP6d2YqFiMpIPah0/pNr2
 yVSAKhRdf4YZ5kVvUyfEFy9GL0jHMwpFMrAVSoOjTHZfSubZ6mau1ZINx1DIEgvv
 d627eVf4tpg6Q/mNr7st2g==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 497fx8hw00-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Sep 2025 18:40:40 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58HHmHc3033753; Wed, 17 Sep 2025 18:40:38 GMT
Received: from bl2pr02cu003.outbound.protection.outlook.com
 (mail-eastusazon11011057.outbound.protection.outlook.com [52.101.52.57])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 494y2e4f3j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Sep 2025 18:40:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GOEjMsFNtZ/e7RObxGQkl/x+6Zz0wAj/6x0Rm488xcnhQHCQFQw8XEBtmqDa6h3NkrpT8iCYJBLN53Kz3DeWza/uwIhT9BsSjyY2NnNheo+skOI8rPneA5/1LRAAn8i8DEqbjWmfIVu/vcsn8/jPRC63JXzbJJtkfDjICmMllesKPUNHNO9i7O8KYUJxilGTYtNnJGyfdYI7LU4DFf3MPdtmTlr/vRx61yLVJz8nHK9QgK1xXSavd18jNkyIobcdpURA79Bb01yYlTHmyWEDWOfUR32UzWhC3rfAvy7vcjABwlc2zEQ1ZUlTpEqdzE6GLJr0+oyDE7LcGdBK68Z/mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wefw/KyZPbtIIribhU7UhEMJBVPx4WPNoIlrDZ9f8zE=;
 b=p6ElOJKl67ddDfzpaXmSi+VmUHfNBXHSvUeMWgskCswmtTjvBhzWsEPjLJV1k1uKHyDgGAp5ZWAVoV5PvDrf0Gg4T5FpF/giWVTZ9EiVFpUeHskcP26uuaD395avTP5+xeCxPXMEw1BLujicyBvUUwHwdFHTyDeDw9KGvjkzHg8QnxK44YJt/K8ZGCUjRfxC1vcO7DSZousFXVSaTkgWa8/Wos4viWE0f32JfzZX2hmMynN38uAunWMAKuQYEjq2PuFRwHlow7ilrCr4Weym+jUmAIVZw5Bs1FOd6vEHvAMJS+KsOBOtJvYNlth5zbPFrTlg+wDr3sJwVZr2gV/tgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wefw/KyZPbtIIribhU7UhEMJBVPx4WPNoIlrDZ9f8zE=;
 b=vtJgPmn1HrRh5LG3tNWIjdQ3OOJ8cCpCZpwcbMlkmLan0OLkShZUYAKrVOsajtg9ux3XvOvuOU++R5gwHP23ccKm4fXToDR+HE0q9hVGA+J/GqQJX+yZwpEa+VX3vT5a5nrd/OFgGcGHi04RjYh5jYequguMHUzBNhAfNDn8erU=
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d) by DM4PR10MB6208.namprd10.prod.outlook.com
 (2603:10b6:8:8d::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Wed, 17 Sep
 2025 18:40:35 +0000
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca]) by DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca%8]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 18:40:34 +0000
Message-ID: <c6d3d5d7-3a34-4d19-b404-498ea4714bf5@oracle.com>
Date: Wed, 17 Sep 2025 13:40:33 -0500
User-Agent: Mozilla Thunderbird
To: Liao Yuanhong <liaoyuanhong@vivo.com>,
 "open list:JFS FILESYSTEM" <jfs-discussion@lists.sourceforge.net>,
 open list <linux-kernel@vger.kernel.org>
References: <20250819032816.426276-1-liaoyuanhong@vivo.com>
Content-Language: en-US
In-Reply-To: <20250819032816.426276-1-liaoyuanhong@vivo.com>
X-ClientProxiedBy: CH0PR03CA0296.namprd03.prod.outlook.com
 (2603:10b6:610:e6::31) To DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PPF35CFB4DBF:EE_|DM4PR10MB6208:EE_
X-MS-Office365-Filtering-Correlation-Id: bd46d95d-64c7-4572-d359-08ddf619b014
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qk1lMG15N0U5Nk96bFFrYWM0b0dGQzF2OGJqWmIzZTNzV1pYWHJPYStiTyti?=
 =?utf-8?B?QXZMM3ExTU9XTVFHSDZ6d1RMRlhQQklWaEVHTXY4d1N4T2RjNko0c0ZlRENO?=
 =?utf-8?B?a3U4ZlAvT0E2Qkl6SkQ2TEZ5OVE3UGd0cGtPcE1INm11MU1ROFN6K1BtdHNE?=
 =?utf-8?B?ditmK3ZsRHRiMnZmZitXOWhNUnpMcWlPMDBkTjZQTGY4eS9lVzRFU3pCUDVm?=
 =?utf-8?B?ai9vT0tlbXM2dG5Ed2dNVWY0Vi9hN1BKSnp4VzJSczdseWdMb2owbS95RWI3?=
 =?utf-8?B?RFRMYWRENkpmb2Zud3RhSEQwTzB4YkJTVHFtRnRZdjZNSjRvdkpXeUxHRnk2?=
 =?utf-8?B?aXZMcncvZnpReFZKYTcvLzFkM0FuNy8rSkpQbWtzTHFueWt2WVY4M2R6Nkd6?=
 =?utf-8?B?MlJ1Sk03N3pRNnBLdjB5U2RXYmlNUG1RZHgrQnlVUlozK1lXQWlEQXI5UGVD?=
 =?utf-8?B?K25BSEZMa0p0TmFHYzVlOG15SkxDQ2hudE5SVC9vVW5ONEszTjdsd1o5NGsz?=
 =?utf-8?B?Vkgwc3lES1VDRk94ckRaalNLSit6a2o0VVlFc29ocVNIUlJGcVRWSnQvU2VS?=
 =?utf-8?B?ajlXd2thK3h4TlNIZnRxamF5TW1WVlR1V3hoUW1lQ1JJSWt3UXk4aDNDalZF?=
 =?utf-8?B?UTVhWTJmbGZjc0wyTGdwbXBYc0NEeU5MT000cGhac2Ywc1dGWTl4MFZGaVM1?=
 =?utf-8?B?T0VOY0hwdVpSOE05bnkwYjZGZmVNaCtFNUFhaHR0bjNaOCtjQVB2cDhYWUdY?=
 =?utf-8?B?UWVILzZYTXBkQmVPQU1vQ0Y2d3I3SkJrQ0hab1JFVU1HenplQWJOSTc1TUxL?=
 =?utf-8?B?MzIxT3I0YUJIZ2Q3SFR6ZXIzTkNsVThOS2tQWlpWcmsrMUxZZjdZV0NGSXdI?=
 =?utf-8?B?Vy9PQVdnNS9xc1RYYjNoRm91c1lhQW52VnhKdTZ6bEFycHRURkhCT2E5aW81?=
 =?utf-8?B?S1hGb1psRnp6d2lDSnFzaDNlL2RQQkFDalRFMnV2MlExbmZjR0l5dDJORzBC?=
 =?utf-8?B?MWQyUXRDbUQxZzA4L0ZXYlM1cU5acTFpQklnKzkxMXJsY21IaUJhc1ROU1I0?=
 =?utf-8?B?QVA5RGZ2NEYxTThhZytES3JPRG01ZElJVEhadDdXTUtwaUk4eDJoa1Q3ODJ2?=
 =?utf-8?B?a0dXZzRhR2JsdTk1SlFJbUhtNk1icm1aOFc0cysrWnBCUnZ0c0xPejErTHZE?=
 =?utf-8?B?Rm95SGxnaTFSenFCKzUvdW9EejV3TmxWQVZrazJyL1RNaWh5V05wVkZIdSsz?=
 =?utf-8?B?ZUhsVVNUcVY4SzB3RnB6d1B5ZXp2Zktod2dpbDB2WXhEeDdRTGN1NklDQ1h0?=
 =?utf-8?B?Q2VZVVd0V0QrMlBDbGIrQjdCNTZNQzVTanVtVEhPYXBYMkRIQVpRd3pOdHdo?=
 =?utf-8?B?cWx6c3ljRFVlTlhwbFdjM3BZbm9RZXVWOUZ3bEdGUTkrR1Vtai9xRDJ3RmdE?=
 =?utf-8?B?YzNiZ1pDY1JaRHhUdzVzbm41R0pCdk5WVytsNTJYbXNTZ1FZb25oQXJvNTh0?=
 =?utf-8?B?RGJ3dTFobm93WHkyY3Q0YlJFcktsM2RpZTFOT1BKOS9xK3dPblJ0bWN1V2dG?=
 =?utf-8?B?MWszOWlpVW5rNlEvZzk2QkYrdjFBS0o1WEZsV2RoRHF2MDJQcThoVGh6ZjlC?=
 =?utf-8?B?V3NmR1RBWG93RytxUmhaMlpzR3oxRkgzSGtRd1Z3RnpnUEg4VWJSZEVXSzVM?=
 =?utf-8?B?NmlPSEgyQlJWRXZMcmFkRm5RNlBhWkJ0WnEyREtVc3huQVE2ZnpUMHE3a2xh?=
 =?utf-8?B?KzkyaVdobVNGU3pRSW1JQ25GcHlVYVhhM0hCTGdxRm1NUzNpSFRvbjcyTEF2?=
 =?utf-8?B?bkpoWWhJR09nOFBEN056TjVBU254dVpmQkxSOWlDcWsyS21uNlFoT2liYmNz?=
 =?utf-8?B?QTJpV1loNCtmNGFUU3QwZ3Vhc1ViSE1EUWw1cndYVUY3ZWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF35CFB4DBF.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGJhTEFqL01ycUlSVDBJQ0JLbzlKOE5Obnl0ajgwQVgzZHh5K0g5a0lEeVli?=
 =?utf-8?B?eFp6dk5BRHMxK05LUmtoL0gyT29kdWs1RFB2dVl4ZGdkUnJsYTNXY2c2S2FD?=
 =?utf-8?B?ZnNwQzYyNDc3amZWN3FiazJLV3hwaC9RM0E4amd0UlBPRDRMbkJmdUxHc21M?=
 =?utf-8?B?UlpLcVdlV1M1RmdEbmNjSXh6b2EzakFwRTI2UDR0cC9Pc0lVTzYxZVhFVk5x?=
 =?utf-8?B?OWpCYkdoRHFPQ1E2dG9HaDMweUtKWGRRNW5TTHMzaVVMK000QVpWcDIzNHVG?=
 =?utf-8?B?SkU1ZEwvaEd1V2YzVkY2U0ZXY0Fid1U4QU5mMnczaFF4WHJFaGEvTFlkNXhu?=
 =?utf-8?B?UXZ4UXRiYUdPaGcwWTlycWt6MGhwemNDZ1lPSU90bDFiTTdoenRUdXRqUDdV?=
 =?utf-8?B?YitpVW13R2l1RXRuTmlCUC9uejdKeUNaMEpZZnBEVUw4cFIwTGd4K2YrYlFE?=
 =?utf-8?B?aDR2NTZmakd0Y3VMTW9hTE0xckUrQzlYR0ZqWVNOalJUSm5HMTB1OU0vWElx?=
 =?utf-8?B?SXZLNGpkNTNXZTNmTEk2ZWp2d1BaRHk2TUpJNGxsaXpQdUNlK0dvTzdFNmNF?=
 =?utf-8?B?TXlsYU1rM1hGb0lFRm1zaWJkZVlrcEVJa1BSQ1Y1ekhiQnFPRmw1d2xTcXhV?=
 =?utf-8?B?OHhVTytqZlAxQWE5RmdrN2JxK1dXY2g1ZGdkUUt0emxQamFBQjZDb2NWa1Bn?=
 =?utf-8?B?a1ZoTXdnTWoxQm9XbWJQb1o2OXZqbFVISFZPR3dscSt1WEppeWJCd051VzZ3?=
 =?utf-8?B?clQyZXROSmhFSWErUzBTRGRVODExTVN0aHdBRjBwdmFWTHhXampIWDB2N1kx?=
 =?utf-8?B?aE41VndDRW5wYy9ndVU2eWN2aWJTSDUzVEp5U09VZEhEUDhTMnlSWHdYZVox?=
 =?utf-8?B?Vm9CaEZqMDNyRnhlMENsUFY1SWlEcnR1QjNHNjMzU1pIcnBSMldlV2ZBSDdI?=
 =?utf-8?B?YjVQZW9ERFAzT1IyMDBPV3BRVytyWUZpcFI3NExZUjNHVDRDVnZqNndyU09j?=
 =?utf-8?B?eHBOVFZUdFQ4ay9nUzlBV1o4NUxkbjdIbmNyLzNQU2M4ZWo0OGVDcmpxOHBI?=
 =?utf-8?B?bEQweVk4cFlVbzVYWFFpcmc3OUR3ODlJaFIwamJTaW9IdFhudzI1UWRJOXkx?=
 =?utf-8?B?ZnJpaGU0cG5SRGRha3ZGVWExSmRXVmQ0Mlk2VlpKYXpvS09ya2pPS0xMTU9T?=
 =?utf-8?B?ZCs3MUZDYXhJbS80bHIwalJMVG1NakN1aWRxN3Nxc1h3NE9Wd1kvQzZ2WGtJ?=
 =?utf-8?B?c20xVlZDblZwQ00vWWg1TFBESDZFUEU1Szd5U0xkdlQzektOV2dlU2svVzFP?=
 =?utf-8?B?YldCcmZOSzVPS1JWU2hwT2JKK3l3TWhhYWUzc0psWGVYK2xwNmxhMWxPRm5J?=
 =?utf-8?B?L3UxTFl0ZDJFWVlQR2NQNlhPVkUyVlBXODRiQWgxOE1NUXQ2QW8rcnZnL3RC?=
 =?utf-8?B?M0lKbzVmMDZtZ2V1bUZsRG9DTmkzdWVVL1lvTEFkUzJ0NVd4NlJaMURFY3hm?=
 =?utf-8?B?WXZxK2VuZDV4YWhHWk1EV2hTV010M0hJVlFzeGlQcGpZU0lpZG1TcjlReDNB?=
 =?utf-8?B?b05qNEF5ZGUzblZ3WnZTWEJMaGxoemZ4amdjMDZKK08ybW1uT2lPcjY3eHJ3?=
 =?utf-8?B?bm1EU1Z0R3d2bFNxTFByYmNLZjBhOHYrbVZCeCtXTVRLQUJRa3hqZjFxb2JX?=
 =?utf-8?B?RVgvakR1RENGeUxNakVWRjZhejVmZVY5dHY2anRWQTFQcEpVU05EWkpkS1hX?=
 =?utf-8?B?cUI4MjJEeFRUSWN1WjNYd3VMZXdKU2x4TnVoV0ZnU0E0d0Y0UFdGTnMzSEF0?=
 =?utf-8?B?MlJGaU03dSsraHFtWmhxazdja2ZoclVtSzJhTkZJdGcxVHpmM25FWFEvUjJL?=
 =?utf-8?B?MjJtLzgvWEFhTWpPN0VMUC9qOXFFOW02bTFtT3Z4QS9LTy9HdHQ1WEIyR1M3?=
 =?utf-8?B?MTFkam9pQzdjVTcrOVNVazhzVDJzSUtnZi9vR1pjMkZhdjBsNXc1eDRJRjFY?=
 =?utf-8?B?TlllVTMxaXdaSjNKNE1BSTZqYTBvYTRUSmJESzhLUjNIUkROc1AvdEM1Tm85?=
 =?utf-8?B?TDQxQ1dWV29JaEl4Z2RCZjJXREpsVzNtNlVBU3dzYXhXTXJIT1VTdEZETjFs?=
 =?utf-8?B?VGh0cGFBYmhIU3locXFHSWN1VG1uSWxzS1ZwbFBVTVJrdzRRRC9kNDU4ZGdQ?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ysfO1YKXcnp48sm6tZPbTTuQr5ot0RLjHS/d1DpYZ0IMRQVBmguy2rbj/PDXl5LFQHEe8m/ApR+ncSF6uELu6c51ROkndFUrJE4xIyfbr2ENa+73sH2A5T5ZuSJI+eysthUR/8T8cZTZ9gSSdnvNkJaUSHVBP4EmI+hoMfpfm2jWtsm1NiM/oJ0skTeVQM6eA6UbRNQCOpvNYxJXWYP9Iw7VXRL4wylPdK/+2wX0BVr7JMiwctiSbMX8AJmrqg94+d13as6VCal6WyRwoz97p2PZYKqD9zxGTK+z4UTBASj50N0X1oD1IQsq146VZf9drCxz1jAzh/5lp64vZSEPqUENLpxkTGKDGf/5tqOYnXF3YSZRnTQPfjRsC9UGyJXbps5m3ty6c2hJJTKQr70CUzQRqjX6QnQIkoB6eEEIWza0mPih2b9cBVs5d5TVfhRck/IfK57Mt/geX4JUQrv+04+gry2yyEN/pYdxMbewnqQGj6scJrGg2sQIzlRdiwuTblDU5pfAUDpp1NSab09UUY5WpmUwAx4kwXRFhXnEVAaA276ZKRlZgjVf2gR8OV9tExBAz4uXZYRLF/4iRD1dRerS0kwoRke7DGLrCbCtihw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd46d95d-64c7-4572-d359-08ddf619b014
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF35CFB4DBF.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2025 18:40:34.8613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QAo0GJVHN1RGTego7W7AqwQcaPN2JanSha563/IFqXU4UyOt+9xQb62tktpkBibFh2tuCYdZxWrjD0bcdPfTmA34i0kjtT1O0sGitQ/Cqc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6208
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2508110000
 definitions=main-2509170182
X-Authority-Analysis: v=2.4 cv=JNU7s9Kb c=1 sm=1 tr=0 ts=68cb00a8 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=1WtWmnkvAAAA:8 a=7nmMJlPtlPNIXYUDjw0A:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: nnPgWtkE6njNC-PTW270F3q48ZSH98_P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX9ywu825obq+I
 PhRvHA4yo1VQxZXTYOwn6lNLrMxRH5O0XhTvvb0dAkMu/2ubmz0BE7x/TT2wun9T+Yd4NDGr0vn
 xMq4i6kwOrQGUncGWOv7ww9OIfJrURBFrjCcCdUzAikubXbMd5icaItKmcTCgT+NwMDOf8JadIC
 KMFjnPv/RdIRxxa9AP6HsFgvQudPYmnm0VxyIOUhQ/PJZoowWKR3C1ziKyLHpr+ZEL0x5oSOtQC
 MZjwWgAtZBwRYyYcl5I4b3vrB0zNqKvBfYOOZaXnPRzn/PLVOOvQMq6XOXqloWXHnu6RuIiE/XQ
 AH8aw9ArSe+qtxjeNh7Rof9JlrAU/Q5w6nptMnoizGNhVbn3fc6fti1cx7SkdfWfK7K7UvQDlhW
 8ScGNlKe
X-Proofpoint-GUID: nnPgWtkE6njNC-PTW270F3q48ZSH98_P
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Applied. Thanks, Shaggy On 8/18/25 10:28PM, Liao Yuanhong
 via Jfs-discussion wrote: > The jfs_log struct is already zeroed by kzalloc().
 It's redundant to > initialize dummy_log->base to 0. > > Signed-off-by: Liao
 Yuanhong < [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [205.220.177.32 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uyx5C-0003f1-2G
Subject: Re: [Jfs-discussion] [PATCH] JFS: Remove redundant 0 value
 initialization
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Applied.

Thanks,
Shaggy

On 8/18/25 10:28PM, Liao Yuanhong via Jfs-discussion wrote:
> The jfs_log struct is already zeroed by kzalloc(). It's redundant to
> initialize dummy_log->base to 0.
> 
> Signed-off-by: Liao Yuanhong <liaoyuanhong@vivo.com>
> ---
>   fs/jfs/jfs_logmgr.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
> index 270808b6219b..b343c5ea1159 100644
> --- a/fs/jfs/jfs_logmgr.c
> +++ b/fs/jfs/jfs_logmgr.c
> @@ -1199,7 +1199,6 @@ static int open_dummy_log(struct super_block *sb)
>   		init_waitqueue_head(&dummy_log->syncwait);
>   		dummy_log->no_integrity = 1;
>   		/* Make up some stuff */
> -		dummy_log->base = 0;
>   		dummy_log->size = 1024;
>   		rc = lmLogInit(dummy_log);
>   		if (rc) {



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
