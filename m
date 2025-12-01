Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BBCC9963C
	for <lists+jfs-discussion@lfdr.de>; Mon, 01 Dec 2025 23:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GSyNUqte/GjB+PgqTr4qtcjOfT5cNmmKlNVu78oq3S4=; b=kIZxeq7+P9IxqFaKfdvWxKXSrb
	3EmuUl1pagg7oXN/R5tLB9oG9nVdbet9zNBA8r2Ijcowy48csRBr7pl+PQrFK3Q4FtuG/VnmXYOLC
	ODrbP0jnDlMbY344eD4J7BT4dUmLI0gc67lW4e1ayV6XWclGVLOsO4upKUBwKo7/sxdU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQCRT-00019z-C7;
	Mon, 01 Dec 2025 22:32:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1vQCRS-00019t-1u
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 22:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=swNh3VuM6nep5TN5EVQrp4bq5QHp28bwAkJ2BPJ6IRA=; b=IMvqxKyNRinZyOlxBrman69gc8
 C05cHhPvdUAe6n9aXTYui3ujk+3ZPS/iWCtQOFMplijelb6rOvkPSG/u1e/x4yJiJn2/65xZDeMUA
 6BT8r65Yzv5UWiwe/v64rZh/OGL4gLjGDlEhmSkZbq+Z1QYOrBsdqPTew4pM6EM4APE8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=swNh3VuM6nep5TN5EVQrp4bq5QHp28bwAkJ2BPJ6IRA=; b=KA55z27dQl0w3qymz3kh2xYWzV
 6Ng77XcvKSeWHKwns3QpSKqzRxrZNA/TOVyEJMmEXEazmSYaMAnWScUfgEbAUtq1ZDB05m1n3Ej9v
 zPpQK6L49LpHJIx/nUmAVtMiGmIF0e13RDmY9RJB01vykRBM3IBbc2Tcq4nFiMKBXkLo=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQCRR-0006Cf-6F for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 22:32:21 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5B1MNMBG3019292; Mon, 1 Dec 2025 22:32:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=swNh3VuM6nep5TN5EVQrp4bq5QHp28bwAkJ2BPJ6IRA=; b=
 BQ+f8CMgVZRVUU7z9H80fR7RLm4nrfwq7oPe4E5r+47EsseLfIB3dA/CZqMmz0V+
 bquGusHhbzAwldnSsuMosZSZTL4LKMbfQ1FSDkE1o14OiTT+ohnLkSsub21WljR9
 xBqtmt8lZ0FPU2cV++mBCpDK+NPOBD5bzr/A+0Be09s8mUERmr/N0rJY9qkNSOta
 tRbqUboWIBzsX6FxW3lhEnGZuuUcPuK1vUPn1G5YVwMtqMXGfKtIKmZpMGrOMAUd
 ioM1iZZSOv+hFG8Rqt0Aw+NDdfJcCyCAsfPWTgfxF9ko8FSR9p+oR3mRFLyVJG5F
 YWgeXY6XSIqrbsJ0W/cSmA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4as845sk7h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Dec 2025 22:32:02 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5B1Kx0Fk015229; Mon, 1 Dec 2025 22:32:01 GMT
Received: from ph7pr06cu001.outbound.protection.outlook.com
 (mail-westus3azon11010041.outbound.protection.outlook.com [52.101.201.41])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4aqq98kxye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Dec 2025 22:32:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pkM5FE0HcbEMX6FjBljuEAyhp8J4YBueypBWsuDl94ePV0mxu8eLeZj7wM2chRi/8OjrBCyxmOUM4cbnOy3m1eDm8VroQCOEsXXoC5sa5BcPvzqP3zFsosWUcw5Ri7IZBrdmQFu6rbj+H0vNHqihInXnqSDCreA9dBnwBOZwsOXOvGKPs/h5MXUQgg18naiWJf8cWOvNthYGu4EbuHkWbNXlVkhD6gOBq8SdbdedVgc/Z7hZlWUqHis9L1EdSyimE1b3doCExzjbgLogkfusTynaSz/nbvKpF7a0/FJZHFBMaOSvUrBT+Yx/jCgNwGf7bPYqY2vC1ZhIs+lxMmESWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swNh3VuM6nep5TN5EVQrp4bq5QHp28bwAkJ2BPJ6IRA=;
 b=Bf/HMbr4WFuH5BFbvEvSYk9oYrqbPEA/+SFoJ0srjNyFHR4FR+qr7XeSb/TP0kJBm+U2ZCv9TbnvXL3Tm2sbr0CAgXsfjkuAanAZran2xwzq6S/4zukdfw7XDcTKInXMx6IEOk7fe+yhOYehp4Suettq+jdy7NthCAslnVw6dNu+H45PmSlovi6TPMQxG08H11TYYw9hWm0191Q6vYqs9iCEizPbdvBS/mwYAUTdV6RHWOUbTYU4itZh9/ZLGdVEAwn4F/BIISN+ZSZMF8KXzmS86fJRnF9R30E1Bc3uUBrpN+Y93Jw6VxXIjT1y+W1gqVbWkH0hAItnjZGJSH9xcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=swNh3VuM6nep5TN5EVQrp4bq5QHp28bwAkJ2BPJ6IRA=;
 b=Mf2+jqEkeNkby9W1ag52WKL3cpx/XkOWBEMUeaU7/WNB1HmHtmeMyTC910l9LcNYmGYZxaYhsMxv1xOlawLq9H3/8ef9yiI69UN3D3mS654q4YwMVL+xk+MM+OFvjrDQQBZex5x24KRX7aXEIZEkOxTZA+EqnKLbE74asBWtFk0=
Received: from IA1PR10MB8212.namprd10.prod.outlook.com (2603:10b6:208:463::20)
 by DS0PR10MB8078.namprd10.prod.outlook.com (2603:10b6:8:1fd::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 22:31:59 +0000
Received: from IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a]) by IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 22:31:59 +0000
Message-ID: <bf6d47da-4c2e-40e4-85c0-ae3061d6c39c@oracle.com>
Date: Mon, 1 Dec 2025 16:31:56 -0600
User-Agent: Mozilla Thunderbird
To: Yun Zhou <yun.zhou@windriver.com>
References: <20251120154350.1041513-1-yun.zhou@windriver.com>
Content-Language: en-US
In-Reply-To: <20251120154350.1041513-1-yun.zhou@windriver.com>
X-ClientProxiedBy: CH0PR03CA0232.namprd03.prod.outlook.com
 (2603:10b6:610:e7::27) To IA1PR10MB8212.namprd10.prod.outlook.com
 (2603:10b6:208:463::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB8212:EE_|DS0PR10MB8078:EE_
X-MS-Office365-Filtering-Correlation-Id: f3d5640d-e02c-4ef3-8486-08de3129710d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTBxcGZKa01Qc2dHTitzaWZVQU1BWjNqVjhPZTVBQkQrNFJRZ2ZjNzVkcG5Q?=
 =?utf-8?B?YXdrVmpMMlNqZFVWNzVhTVdPMnVGTG1xM1NBMHMwR29KT3pWdnlkSTQwd0hD?=
 =?utf-8?B?QmdBQmNlZXRIWUgwL1hpYnhLZEdwTFIweERDZ1NPU2pSSkNrMFU3Q3pNbUVo?=
 =?utf-8?B?MkVEeUNLTm5MaVBFSFZRbjJsUG5qL25kQUJOd2o4RFdjZyt0UU9TQ1hlOE1T?=
 =?utf-8?B?UkhzN2NoNmhwcHo4YnRvQ1NsTUFBV3MyYTlYUFZpaW95dmNiVGIvbjJRY05n?=
 =?utf-8?B?SlpWcmtxUzUwNENaKzBhNFNFREkwRWdzQ0NPalJDRVFoc2JDeFV2ZVB4QWlN?=
 =?utf-8?B?V1B2QXhIQTNSSkR4TVg2ZGpmdHkxcXdkZklRMmh5RHBNTGozbWdLa0hFN0h1?=
 =?utf-8?B?YU9mdHRML2tCemhwaE5yM0R3VkswWFJoVGVBSXd1SjM1eXB2Znc0bExWTERz?=
 =?utf-8?B?cmZVSEZDZkYzL1pGR1Y4NW9kWHhaOUF6bFE1QXRrV0xwbzRNY2pPdFh4bGU5?=
 =?utf-8?B?UG1MRXZ5WVJvUnUwd1Q1NThucFJBa1ZBYXhZZWFWVnBTRTJScDVvQzB4Zm1O?=
 =?utf-8?B?T1I3bzdVMFlXVGZjemltZkZRVFJkMC9tZ2twK1VlR2lHc0lpQWE2Y0VEd1lt?=
 =?utf-8?B?dzVwL2I3QmJ1blVPWnhGUG5vVnpoaURJcDYzUnFlV2k0RFk1UHM2UVhqVTdp?=
 =?utf-8?B?eUpyS2JkWFN5QXFRRkd4NzNTeTkwTm14SWl6dEZyM0UyOGJiaDAzek81bk1o?=
 =?utf-8?B?SE5qWFdVZkYrdGNIYlRBSU5kTlB2dUNnK3hhems0aklncGNZWTZaY2tiODls?=
 =?utf-8?B?d3JDVUd6QkUyR1VDS2RQdkhKNXhacVh3bjQ3aFltMlNLVFBVNEcrZUZ4dnJm?=
 =?utf-8?B?NVZKY0cxd2JjMHB0dGY4ZmJZV3Y1TjZ1bnh5QjJOY3pzK1UvSHZDTkJweHVZ?=
 =?utf-8?B?UjVxb2N4bExmR2tSQ0hzWmJORm1NbmZ1bFcrUkJJaVpvOVhnd0dWN2VBckFN?=
 =?utf-8?B?SkJnS1RvKzNwaVVKRzNCUDdKUFBMUDVIS0UzVXJRKzJzUUMxZzRZbzYwVUo0?=
 =?utf-8?B?bFM3c3hibnloMStKNVRJd0d4N09HazF5Z1Y3dU5ibGdhZ1VsZm9YVGJHVEF4?=
 =?utf-8?B?cFFEbjgzYlBPZ21YN1EyM3RzV25wMWFZNG9nSnVsdS90VkFQbmFybUpGVXZF?=
 =?utf-8?B?dTFRMitXTjJtNGs2NFFXSmR0T21aK0VvVWhxY0R4T1pzYUdhdmdybkxGTkNC?=
 =?utf-8?B?dzdydFpaV2NCNHhmMHhvWUJDYXpBdFRab1RtamhrT2hKOHBya0tYc0hSeEV2?=
 =?utf-8?B?NEVyL1NiNWdOZmVQUmdQMTU4dStrSHpQaDRPWnppQmpOTTk0UlhiMjh1VHVu?=
 =?utf-8?B?OWxEdFllY2I2ZlVkd2ZNWVlpODBqVys2UWFuTDM0T3JvN1d3MlBhL2dyMEh2?=
 =?utf-8?B?S2R1MUJHRzZ2SktOVWJVVG1ra2ViOElJVnppaDA3UWVJM2RQNGo4YUtvMGtl?=
 =?utf-8?B?RndHQ29JYUZ1amhXdWxYc2xuRDdGbHJCY1lLSWtiT1hvRHBOeWxGenlNTHI1?=
 =?utf-8?B?TzNOc04xbjBaUUJGdzRhTE85OUNnMVQ3SmpISnBPTGZVN0FBMk1hdTZXYXlu?=
 =?utf-8?B?WkFMWkt1bThXdUwrZnIwK3k3VEFFWDg2Nk4zM1VmdkIxNWFxcGh2N1hnWlB6?=
 =?utf-8?B?UC9FcURLNzd5by9xUnArVzBEZWlIZVJKTzFGcUtqeGQyT2gxbUxyUlRtVGkr?=
 =?utf-8?B?c1NNTHc1d1F2Z04xV0hsZjRkRjNXaWdnWThRZW11cHVzMTZEUkZ1U3dBM0d4?=
 =?utf-8?B?d2JVT3BTV2h3MzIzbUpJSndjWmluK1BKQm1sbTVERDdOVE1WMGNnNXRLbFhB?=
 =?utf-8?B?WVYybFptUHFISWlVcjRFaUVKWUVmaXR1eUVKcEpYTU5GMGlVOU9MUHF5V3FC?=
 =?utf-8?Q?PRLZjwpvoJvACaOLnsVkOg68kiJaRXFz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR10MB8212.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzN2OXozaTJvaUIwd0oyb2Q0MDVqc1A0TnNhNHIvMjJoa0FqYml0SSs1djIx?=
 =?utf-8?B?am1zMjc2cFZRSW9HODF5MG5BTHBGL2prdzZ3SGswYkMrcmx3NGtDdG5PNjdI?=
 =?utf-8?B?Y1pMRm5TbDFwOFk2TFRmR05QdTloaWd4TlNqWVcvREFGTjJraGR0aFRQQnd2?=
 =?utf-8?B?Y2JMamJoUklXRVhvdXpQUis0QUZGWFZYYmxVSjZVYllCejdmR3Z3bWR2YUhl?=
 =?utf-8?B?Mnpsc3FSaG9hbjdaWVhEMXFROFB5SHNXMVpGakoxb3prVFppZFMyM0dydzA0?=
 =?utf-8?B?TXZYM1hSSkhXV0NYemg4K1cxR3dQZ2JRNDFHbG50SnRVeldJaURMVy9TYTZW?=
 =?utf-8?B?c1JkSnROZFJCZ0V5bHF3bDM3TXllVkhJaFd0VGpEMHZLWTROeGs3ZlpiSHh2?=
 =?utf-8?B?bjJYM3R1alRDOEswd3RJcWwrOGVtc2M5QzRGak5DMEpoWnFkNGZ0MCtldy9B?=
 =?utf-8?B?bTdSWFlXTWtqZlN1V3psRnIxWml4dHVlTXJmL1dLaFY5bXFFemtDSE4yVDN5?=
 =?utf-8?B?dldvMHJpN1h2eEM4K1NvZnoyaUFBR3pJdi9ZMlp2OU5VU21QU25JRndtcnVk?=
 =?utf-8?B?NHZkT3NtTkRKT0FCK1EvZVFoWExQWDBTb0ZzYW14NEROUC9zSDgza2pBaTQx?=
 =?utf-8?B?MDRrcURRT29zZTAyZ3RNK085U3E1VlZIT3RnNnA5c0RGV3VFcmRHRDVIbk4w?=
 =?utf-8?B?VGNJYUhPUnRPL2NXVFIwbjNDc3FkUjRqZjZVOEhWUGQ0d2kwSmc3N2hueHVi?=
 =?utf-8?B?a0pSeG5DRTNrMjJJbnE5MnlNNlR6dnhRSmRmSnB3TlFRVHdrQUxldjMySCt3?=
 =?utf-8?B?eVJzYjlxUlVHcTZWcFVQVFFiVVRRVXV0ck9uODBMd2k2MSt0bFk3ejJuSFlM?=
 =?utf-8?B?b3gvYnJoV1NSdDJlb1hkSEUzN0NrYm1xaVorVUNWNWhPVk41dWVUN3h0eVhF?=
 =?utf-8?B?SHlVYmpLWks3dnBWeklla2lpNHJ6RUt5M1k0ZlNWenhENFcyN1MvTkJ2ajJ0?=
 =?utf-8?B?cnR5bXY5bmNIMnY3QW1iamZQeHhnaURpVXZiRE9idVNiMklWMDNEL29vM3dW?=
 =?utf-8?B?S2tJNE9MS1NlNHBYcXhWNkpvdGpqYnlPSHovcWYxZlJLdWxvYzI4Z1p5WlZ2?=
 =?utf-8?B?MzFpODVhZXp1SStDdHVuczMzV1VWUDNkemw4OGxlWFZvMVB6ZXRJVGg2M1J2?=
 =?utf-8?B?aWpDSE05cVZwdjBDNSt0SmpiNVpDUFlKdGk3VFppZTJ6RmFBdWQ1L29PNlh5?=
 =?utf-8?B?YXp0VmxvdDZkeldVcTIrNSs5K1Q2OFlGQk1VMVFxV1ZkL0NUa1R6UW52V0Vs?=
 =?utf-8?B?NjVzaGJWWUpxZlVjcDR2UURlaVhFVHZCYTlza2hTdFFzNjZtY2JaeVNmOUVw?=
 =?utf-8?B?dThUN2d6c2Nsa0NlTEVnQ1JwMytsd1BCRExxRlZxaTN6dmNCMWRLNDZJRXVU?=
 =?utf-8?B?ZklmKy9ZOFEvZmxVTElLRHVPVk1uWTBsRHRpVEllWG5IeEZhS1ZhNU0wSG8r?=
 =?utf-8?B?UHZ6QWhkYXZ4akQxZTg3S1YrNit4UjR3SEVPczMxdURnb213SzhlU1J0RXg1?=
 =?utf-8?B?cnNaMW9YNVlHRjkzaE1YNmxLRlprRGNpK0xlSjJzMXJHUUs0NWx0cXVIdkZz?=
 =?utf-8?B?aFpWc2k5OHlDWXIxUjZtWHlGM1RnY2IwR1hSeVc5OGNrcWtlYXBDOU12akxL?=
 =?utf-8?B?QnlBei9tTmNkT0VWRjQyR1VvT09zRmlqWWdVc1YxVmM0U1JHd2oybjdUWDNR?=
 =?utf-8?B?SEl6c3RBZHM5SUY0TXlJbXNjaW0zR2ovbkpJVE1WSzdMUEdVdFhUS3A5cmxo?=
 =?utf-8?B?eGxLWE5NOTZqeWJ1TmRpSWk0dk85SUR0K29qeTJUYk5mQzBvWURSY1RVL0dp?=
 =?utf-8?B?OU1oSndZNUFRMWtwM0hpYkVXcVU4MTFnWDVjYUZrUEplTVp3QUVnc2dKVW9t?=
 =?utf-8?B?Y2NjajlWZzFWOWl0TTlUSExIVUM2U3hLNXl2U2c1ZytxbDB1dUhYMmlvR0gr?=
 =?utf-8?B?ajBMNXVkc1pzbEQxOVpwQkdnNHVOWjZ3NnExY1RiM0RjRWUzWENzTmdtQkIr?=
 =?utf-8?B?cVkrTnZUdmpjV0sxclR6TkxDME90WVpPbWtUdnQvbmVWeEVXckFBZUhXdGFY?=
 =?utf-8?B?Y0NpU1liNXpHb3FLS3h3WnQvZnJELzZLSEVJWUNGTHNvZjJrd1N0SWFiVzhl?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: avEoY3ZEYIHHWk3c7fBSUME8jXOhwhXR86Ya1gLqrZuvMAvsAPDutiUg/yfm/SAJvjoXSt6wYNzGfOQYOhzIt0tPzY+EhCm4YnjNJY62x3s1FWFFDfB7pArToBXdrZ2yAJJhrRHl8jSJr+xTUdRQ4W1m7Oim7ZT/QezwWv4e2bOGjx7yVvVbbLmjSmta25TV3fZlPFmfaw/S1iv7gnvkxCyDXRHHfYCxnKiARaCNybc82uEqSx16sZE6709cOTI3raATvw2FAnudPEcjto3YLtHJHW0qwuNC7NSx/I8ZpkaV0HL2Vj1olaxCkwp3zOHpqfx3OVpr3vUTtw+nWgGSwAEC4fTm+dWLr6mhP5tUncdoz6c0vfchn601dJebctWBLJICFARHZHcw8yeIDXKRVQsBR8C2AtAF43GxDYKdrC9U0QaAgdIVJEq9rW+9m/HYATdN9Vf23KpAscQu/U2Z2/P5QRPBAUjJQQYx7JboFgTI5Wzg1J+UfqRuyAqtcFCpZRTWn2hJw88aakxRK+swB9QyasMnJ5Llv+hSeZmvhwYRaNCDIvf2ZiaPdrl0v9q7I2hZxldNTktXAWVfEoAHgRVTHtITSMNXB4O/l1HMEGc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d5640d-e02c-4ef3-8486-08de3129710d
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB8212.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 22:31:59.3815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s9FyfqqI+WloSizPRZg6tafGwazpoQdUxRqURucM91nBM7uL4CU7LZA5iW1/1SmPZJgzO5oao2RBDXGiIOOJ+bj7Z2CGOWY+kpsYafuOgH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB8078
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 adultscore=0
 mlxscore=0 suspectscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512010181
X-Proofpoint-ORIG-GUID: xqIXzP1WsIUnlryWwOIuZfeamhCrCnSz
X-Proofpoint-GUID: xqIXzP1WsIUnlryWwOIuZfeamhCrCnSz
X-Authority-Analysis: v=2.4 cv=W8w1lBWk c=1 sm=1 tr=0 ts=692e1762 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=t7CeM3EgAAAA:8 a=SL4K8EpQiW1LEVh6N2AA:9 a=QEXdDO2ut3YA:10
 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDE4MSBTYWx0ZWRfX9Z29ALbrkVld
 dBHydaJFhWsar/2nM1BeZpHIB2Yfx8kheXq+JtmNw0OMtBpoR0MoyU3/WtBPmDnK2x/M9aDoxHy
 +7zUo96183BAgZqmO5xi5FNde5lre5X1WDiL4yedaNYr4A/GMyWdQFDtC8eOYie9s5cDHxKmUzA
 ZBC6C55HKh2yHkbN/hlGtgGO2T4X1ZfTM4FkbnNvz07YeJFr4i3WfxIR9tyCyyvcl189ZCHwCr4
 TdvTjMUg5pbBGlHwlRckBotfvXOdINszrmvBP+G+orLcIg6FnDT7ONIXVNZQyT9zFNvQikcp225
 SGEjFXclwRDVTsPhuaKoZJB7wE4ELIIIleCXfzGdHn7Sl4fXQyJX0kfhyi6WS4qrlbJn0V+4a9R
 TIq2tHCzLc6uLTWSt/8hHAGOrm1UJA==
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/20/25 9:43AM, Yun Zhou wrote: > Add check_dtroot() to
 validate dtroot_t integrity, focusing on preventing > index/pointer overflows
 from on-disk corruption. > > Key checks: > - freecnt bounded b [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vQCRR-0006Cf-6F
Subject: Re: [Jfs-discussion] [PATCH] jfs: add dtroot integrity check to
 prevent index out-of-bounds
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
Cc: jfs-discussion@lists.sourceforge.net, eadavis@qq.com,
 linux-kernel@vger.kernel.org, kovalev@altlinux.org, contact@arnaud-lcm.com,
 zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 11/20/25 9:43AM, Yun Zhou wrote:
> Add check_dtroot() to validate dtroot_t integrity, focusing on preventing
> index/pointer overflows from on-disk corruption.
> 
> Key checks:
>   - freecnt bounded by [0, DTROOTMAXSLOT-1] (slot[0] reserved for header).
>   - freelist validity: -1 when freecnt=0; 1~DTROOTMAXSLOT-1 when non-zero,
>     with linked list checks (no duplicates, proper termination via next=-1).
>   - stbl bounds: nextindex within stbl array size; entries within 0~8, no
>     duplicates (excluding idx=0).
> 
> Invoked in copy_from_dinode() when loading directory inodes, catching
> corruption early before directory operations trigger out-of-bounds access.

I really like the idea of these patches. I'm swamped with some other 
work and have been out on vacation a bit, but I do intend to give these 
a good review and hopefully integrate them. Thanks for your patience.

Shaggy

> 
> This fixes the following UBSAN warning.
> 
> [  101.832754][ T5960] ------------[ cut here ]------------
> [  101.832762][ T5960] UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3713:8
> [  101.832792][ T5960] index -1 is out of range for type 'struct dtslot[128]'
> [  101.832807][ T5960] CPU: 2 UID: 0 PID: 5960 Comm: 5f7f0caf9979e9d Tainted: G            E       6.18.0-rc4-00250-g2603eb907f03 #119 PREEMPT_{RT,(full
> [  101.832817][ T5960] Tainted: [E]=UNSIGNED_MODULE
> [  101.832819][ T5960] Hardware name: QEMU Ubuntu 25.04 PC (i440FX + PIIX, 1996), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
> [  101.832823][ T5960] Call Trace:
> [  101.832833][ T5960]  <TASK>
> [  101.832838][ T5960]  dump_stack_lvl+0x189/0x250
> [  101.832909][ T5960]  ? __pfx_dump_stack_lvl+0x10/0x10
> [  101.832925][ T5960]  ? __pfx__printk+0x10/0x10
> [  101.832934][ T5960]  ? rt_mutex_slowunlock+0x493/0x8a0
> [  101.832959][ T5960]  ubsan_epilogue+0xa/0x40
> [  101.832966][ T5960]  __ubsan_handle_out_of_bounds+0xe9/0xf0
> [  101.833007][ T5960]  dtInsertEntry+0x936/0x1430 [jfs]
> [  101.833094][ T5960]  dtSplitPage+0x2c8b/0x3ed0 [jfs]
> [  101.833177][ T5960]  ? __pfx_rt_mutex_slowunlock+0x10/0x10
> [  101.833193][ T5960]  dtInsert+0x109b/0x6000 [jfs]
> [  101.833283][ T5960]  ? rt_mutex_slowunlock+0x493/0x8a0
> [  101.833296][ T5960]  ? __pfx_rt_mutex_slowunlock+0x10/0x10
> [  101.833307][ T5960]  ? rt_spin_unlock+0x161/0x200
> [  101.833315][ T5960]  ? __pfx_dtInsert+0x10/0x10 [jfs]
> [  101.833391][ T5960]  ? txLock+0xaf9/0x1cb0 [jfs]
> [  101.833477][ T5960]  ? dtInitRoot+0x22a/0x670 [jfs]
> [  101.833556][ T5960]  jfs_mkdir+0x6ec/0xa70 [jfs]
> [  101.833636][ T5960]  ? __pfx_jfs_mkdir+0x10/0x10 [jfs]
> [  101.833721][ T5960]  ? generic_permission+0x2e5/0x690
> [  101.833760][ T5960]  ? bpf_lsm_inode_mkdir+0x9/0x20
> [  101.833776][ T5960]  vfs_mkdir+0x306/0x510
> [  101.833786][ T5960]  do_mkdirat+0x247/0x590
> [  101.833795][ T5960]  ? __pfx_do_mkdirat+0x10/0x10
> [  101.833804][ T5960]  ? getname_flags+0x1e5/0x540
> [  101.833815][ T5960]  __x64_sys_mkdir+0x6c/0x80
> [  101.833823][ T5960]  do_syscall_64+0xfa/0xfa0
> [  101.833832][ T5960]  ? lockdep_hardirqs_on+0x9c/0x150
> [  101.833840][ T5960]  ? entry_SYSCALL_64_after_hwframe+0x77/0x7f
> [  101.833847][ T5960]  ? exc_page_fault+0xab/0x100
> [  101.833856][ T5960]  entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
> ---
>   fs/jfs/jfs_dtree.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++
>   fs/jfs/jfs_dtree.h |  2 ++
>   fs/jfs/jfs_imap.c  |  4 +++
>   3 files changed, 89 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index d9cf2071c41f..e1cbc3a04f3f 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -4316,3 +4316,86 @@ int dtModify(tid_t tid, struct inode *ip,
>   
>   	return 0;
>   }
> +
> +bool check_dtroot(dtroot_t *p)
> +{
> +	DECLARE_BITMAP(bitmap, DTROOTMAXSLOT) = {0};
> +	int i;
> +
> +	/* freecnt cannot be negative or exceed DTROOTMAXSLOT-1
> +	 * (since slot[0] is occupied by the header).
> +	 */
> +	if (unlikely(p->header.freecnt < 0 ||
> +				p->header.freecnt > DTROOTMAXSLOT - 1)) {
> +		jfs_err("Bad freecnt:%d in dtroot\n", p->header.freecnt);
> +		return false;
> +	} else if (p->header.freecnt == 0) {
> +		/* No free slots: freelist must be -1 */
> +		if (unlikely(p->header.freelist != -1)) {
> +			jfs_err("freecnt=0, but freelist=%d in dtroot\n",
> +					p->header.freelist);
> +			return false;
> +		}
> +	} else {
> +		int fsi, i;
> +		/* When there are free slots, freelist must be a valid slot index in
> +		 * 1~DTROOTMAXSLOT-1(since slot[0] is occupied by the header).
> +		 */
> +		if (unlikely(p->header.freelist < 1 ||
> +					p->header.freelist >= DTROOTMAXSLOT)) {
> +			jfs_err("Bad freelist:%d in dtroot\n", p->header.freelist);
> +			return false;
> +		}
> +
> +		/* Traverse the free list to check validity of all node indices */
> +		fsi = p->header.freelist;
> +		for (i = 0; i < p->header.freecnt - 1; i++) {
> +			/* Check for duplicate indices in the free list */
> +			if (unlikely(__test_and_set_bit(fsi, bitmap))) {
> +				jfs_err("duplicate index%d in slot in dtroot\n", fsi);
> +				return false;
> +			}
> +			fsi = p->slot[fsi].next;
> +
> +			/* Ensure the next slot index in the free list is valid */
> +			if (unlikely(fsi < 1 || fsi >= DTROOTMAXSLOT)) {
> +				jfs_err("Bad index:%d in slot in dtroot\n", fsi);
> +				return false;
> +			}
> +		}
> +
> +		/* The last node in the free list must terminate with next = -1 */
> +		if (unlikely(p->slot[fsi].next != -1)) {
> +			jfs_err("Bad next:%d of the last slot in dtroot\n",
> +					p->slot[fsi].next);
> +			return false;
> +		}
> +	}
> +
> +	/* Validate nextindex (next free entry index in stbl)
> +	 * stbl array has size 8 (indices 0~7), so nextindex must be within this range
> +	 */
> +	if (unlikely(p->header.nextindex >= ARRAY_SIZE(p->header.stbl))) {
> +		jfs_err("Bad nextindex:%d in dtroot\n", p->header.nextindex);
> +		return false;
> +	}
> +
> +	/* Validate index validity of stbl array (8 elements)
> +	 * Each entry in stbl is a slot index, with valid range: -1 (invalid) or 0~8 (slot[0]~slot[8])
> +	 */
> +	for (i = 0; i < p->header.nextindex; i++) {
> +		int idx = p->header.stbl[i];
> +		if (unlikely(idx < 0 || idx >= 9)) {
> +			jfs_err("Bad index:%d of stbl[%d] in dtroot\n", idx, i);
> +			return false; /* stbl entry points out of slot array range */
> +		}
> +
> +		/* Check for duplicate valid indices (skip check for idx=0) */
> +		if (unlikely(idx && __test_and_set_bit(idx, bitmap))) {
> +			jfs_err("Duplicate index:%d in stbl in dtroot\n", idx);
> +			return false;
> +		}
> +	}
> +
> +    return true;
> +}
> diff --git a/fs/jfs/jfs_dtree.h b/fs/jfs/jfs_dtree.h
> index 1758289647a0..94dc16123c87 100644
> --- a/fs/jfs/jfs_dtree.h
> +++ b/fs/jfs/jfs_dtree.h
> @@ -253,4 +253,6 @@ extern int dtModify(tid_t tid, struct inode *ip, struct component_name * key,
>   		    ino_t * orig_ino, ino_t new_ino, int flag);
>   
>   extern int jfs_readdir(struct file *file, struct dir_context *ctx);
> +
> +extern bool check_dtroot(dtroot_t *p);
>   #endif				/* !_H_JFS_DTREE */
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 194cb05b42b9..7056c8d6fda2 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -3111,6 +3111,10 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
>   
>   	if (S_ISDIR(ip->i_mode)) {
>   		memcpy(&jfs_ip->u.dir, &dip->u._dir, 384);
> +		if (!check_dtroot(&jfs_ip->i_dtroot)) {
> +			jfs_err("Corrupt dtroot\n");
> +			return -EIO;
> +		}
>   	} else if (S_ISREG(ip->i_mode) || S_ISLNK(ip->i_mode)) {
>   		memcpy(&jfs_ip->i_xtroot, &dip->di_xtroot, 288);
>   	} else



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
