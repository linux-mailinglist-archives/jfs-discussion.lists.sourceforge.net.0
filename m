Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1278B025CA
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 22:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJFDDPwhvboEWF1UEQQxPwTLzNFrmQQDQbjMsDAC4UM=; b=ga2PoNDpce8Qx1dMGQs48c+n7W
	0YLrnRPxejMjR3lSOfe+itHDs5cFZcah/HWM1/nW/30F7e4ukT5KWiBTNkHqPnkoHF6tHs2V8EC3e
	sER6j9YmHCz14uw67fEizn7F2L0CIhz6MSnIkV+2+gjEiFrYr+rKbstwcwQWKncT1pIQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uaKPL-0001Tr-KU;
	Fri, 11 Jul 2025 20:31:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uaKP8-0001TZ-A3
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 20:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a8upi1SfAQec4b0UJtLstrk1tum9hrKIN8Dx+k1pn1M=; b=P4g7C6/qblZgJTOFGyvmUtC+cD
 wWMz7kEn99yKiurMcJHLfoJNSAvcbxyqF9ADSUXcKxz7scNvwAvXZgrriZU1yJW1YyljtooCOR1u1
 rtTD7SdZOT343VUMWCTM1M24FRth4j/sGD0I+1lbk1+rGXmwj7Ofk4BCjaB4wVA7mLMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a8upi1SfAQec4b0UJtLstrk1tum9hrKIN8Dx+k1pn1M=; b=TRz8GUlDsjsIq4BwZrzJ4J8KeP
 kvrtcMmXJw2vx7VOCNq5i2Xx2HyFOzgOPmWiu/y8HoWzbgonHVkJ/66qRDmLBKO4NjB3HijAGpalM
 ICgdAQr6dfnSWYkbb1bd50Ddzgom9kOs5v3I+esV1ruhMo7fCfOsy81C3o4kgr3k16mc=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uaKP7-0003pn-OG for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 20:31:34 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BIHDOg030829;
 Fri, 11 Jul 2025 20:31:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=a8upi1SfAQec4b0UJtLstrk1tum9hrKIN8Dx+k1pn1M=; b=
 b0AxX+NpHQ7+7Ibwy3pmV3NgSQJ5Wy1GsFwlzVilF9laLvdT4mvHeUlthFTkOKOh
 27hilYTVgd3sHLHrq0I9mIF/QNDWNqihYeTv/NrVnMT3VyFCe4lRYfNf/u1+Wrdf
 k1IbzizfnTYSwqcqm99U+Ufy2eEKIiHG57gHy6QjTUNNOlKufpJpF8ZC9g/WBKI2
 FwS42T8aUFP1imKis8+fmnx70hIdJLvM2wIMIhvj0JcT5N75Y1eLkj2YHlzWyT61
 tO6NFcUHJGO602qPoZnzLE4JFIwf9NIMTTlnc6AYJY6O3btVng3EOPZFEB5GDVAr
 ecwwZ5N0uSDikujR+4UXbA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 47u7rk07j5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 20:31:26 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 56BK2QlN023586; Fri, 11 Jul 2025 20:31:20 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2064.outbound.protection.outlook.com [40.107.94.64])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 47ptge8bfq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 20:31:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hKHvZPoznPg/l8s041hZrd5H5L0gYPXeb9fqxxML2dpdUn2fmtPIFoh2TXUhB0kI/NJmNL4VqhRYJx3IoyCbePemsOBVQ+nqwWgBHPmdTaUQXmACaOxqZ7vm+Bo61gj0ojAyTy+9Bra8KEKE6wSIASUn2ksNn8uPZNGkXlCivsedbOuEGAs2bD7nPnEMuHw9ym8eJaOr3efrIoDKUwpGjgP4rV5FBc+Dc5PLe2uV0j4cSeVWVnmVMymIAE3HdTvPBjPU9vSAY2ssPE7wszKto9foJ136lSiyUp4geqRNXsLkKdk+K6ciL0O6gLQn4e5Ig/KVoTdf07ZiO3t6OgjQ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8upi1SfAQec4b0UJtLstrk1tum9hrKIN8Dx+k1pn1M=;
 b=Ltv12bJQx8mnl4lSj9H3n5wV/6YrqNxITK6dKu2sIYhiV1KvB69buCElY9JQOCX2LQ7zW/p6JtCYCdF9OT9Wz9nXtD5Mqy4NeQ0dFHjGq5O8fK702XPtgd07MQ/dIbNjY+H76qSrJPlRETov5D5SB7vgN9p7BJhZYpEwXBjRRnQzyf+WCA/QDv1EvYOlEPC7CPZO9siP5x45opht+NBtDckntaAPpS2fuBgsNSAFgt51HDA8MXovdbXCyt4Z9tQQjWqpuXV0Y9VZp2xZvNpANyF3dufYxgp/Hvjemy3wAw0cuGyGTXZYYB1KdcQbkPU+QLxbqYDsx8Cs0mSDJuS4cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8upi1SfAQec4b0UJtLstrk1tum9hrKIN8Dx+k1pn1M=;
 b=aX3RlXHVTte0N7z8lTq71bpSUC+6p1T0+Ypt6DhRCKfNWtovTX4TQsqpTSSMZTJxB0yJRon5zezQG6EuThaMrLYNyb03RfZW6ky0U7YY+Uqcon0Ji1BVLL4AmiUqb+RHBM0uN5dWdKxPd6TjUb3n021KxZAR64Ke+n2z4UnIVpY=
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d) by DS0PR10MB6125.namprd10.prod.outlook.com
 (2603:10b6:8:c7::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Fri, 11 Jul
 2025 20:31:16 +0000
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4]) by PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4%6]) with mapi id 15.20.8922.025; Fri, 11 Jul 2025
 20:31:16 +0000
Message-ID: <cc4f9113-c0f2-4666-b819-7db9bcaa3d51@oracle.com>
Date: Fri, 11 Jul 2025 15:31:13 -0500
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>,
 syzbot+077d9ebda84f426a6a1e@syzkaller.appspotmail.com
References: <6850d37f.a70a0220.395abc.01f9.GAE@google.com>
 <tencent_279220DDBEDD93995BCF998D8B25B18D8B07@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_279220DDBEDD93995BCF998D8B25B18D8B07@qq.com>
X-ClientProxiedBy: CH0PR03CA0429.namprd03.prod.outlook.com
 (2603:10b6:610:10e::13) To PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH3PPF517B7003F:EE_|DS0PR10MB6125:EE_
X-MS-Office365-Filtering-Correlation-Id: 06cf558a-8f18-4fb0-7a9f-08ddc0b9e283
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUNMNTBvOGF0SjZScFduVmd1THFIY2U5MUFtakZHZVUrTEJRWmtJam5Jcmlo?=
 =?utf-8?B?THhpQVkrMGZ0UkFYTlJVV0ExYlVlUngrYVpJQ1V0ZUpxRXdTTnZYZSs5YkVZ?=
 =?utf-8?B?MnMyMWxzN3h1a1Y0bWFQZ3lxM0VERXA5TGNmTVc0YzlnbW9NMENLNG1yL2Iy?=
 =?utf-8?B?NzRadXZiWmhlZHlDazRuNk84ZkgrVW5JQ3pJa3FCVWdqNzRiOG5tMkNnVkVv?=
 =?utf-8?B?aERMZDBITnlDdjhiaGlUUkIrcDNGcFRjbStHNFdKME15eDFCYVV4azVScWMz?=
 =?utf-8?B?cC9zSUZPQlh6N2E3dzYvU29iUFV1dkZoYjNPNDZhY3habDdaOEFwaFNwVXo4?=
 =?utf-8?B?blhvdldtYUQrVGhPb0NacXI4UXhnWVBKNklVWUNpamxVa2hZbEpFU2w3Njds?=
 =?utf-8?B?NDgvS0U2b3hobU5kOXo5ZkVmUnFBMzJML3JFZmJvS2VKZ3NGbHFtWDFpMHo5?=
 =?utf-8?B?d29hcVhteXJ5RVZWUS9BQXhKZTNSNm5Da05lMk5Da2RCQ3l5dTdGZ2kxUkhl?=
 =?utf-8?B?TitxNlRLaUF5czNPK1o4aFRmSkhBU0pWc203MWRBbTR1aWZVQWJMRCtaTTJn?=
 =?utf-8?B?S3NrcVJBTjdkdmxCRnNRaXRxd1F1UXdMTCtrUU9nQ0NhVnRCMU9CYXd2cXll?=
 =?utf-8?B?RXZFSUk3NW8xQjhUMms2VnhwUUpPd2pSL0RQWXdVVzFjVndsN0xaRlJsVSts?=
 =?utf-8?B?aFpoU05wUjZ2WkhvY21FQnVpM2Ywc0tiTHZOUDlDY29UY21jYXZCd3hkbGFt?=
 =?utf-8?B?cUhoTjh5K01QUjQ0T0hZY3A2WDI2NUxrbXo0bFA0NUF6a1dIN3FkUG5RcGpr?=
 =?utf-8?B?QU1wM1JvZTMyNzFNZ0NCVklzaUxLV1dHNCtkVjdTVCt0b3NXMTZNN2lxU3F3?=
 =?utf-8?B?R0lSRHJydDYvWE9XQUsxUGxxdkhXbUc5TFh4NitBNTEwd0hMbGc2U01oeEEr?=
 =?utf-8?B?dGxveTFiWWV5ajFjaVA2M3RDRE9DRHVnbzlCMWgxSUpvMWhsaG1KNWd4Vnl6?=
 =?utf-8?B?V0lQWEIvZnlZakY5VWl4QTRNQmRBOUI4cVQ2bjMyZm1OSElPVDNJR3AvT1Q1?=
 =?utf-8?B?eTdZd1FtUGcyaEhONml0WkN1UHJ2UTA1OWVIQTJ0L09rbWUvdk9aczc4Zjh1?=
 =?utf-8?B?OU1ldWNkYkIwK3Vsem9YVlgraU5GdW1ZUE0wM252L0J6UC90cC8zTllkY3lm?=
 =?utf-8?B?bUkzblJUeFpISUk4SC9rbG9Rem92Q0xjdjZCWTFkekdta2w5VUtuOGhlQ0xV?=
 =?utf-8?B?WlhJNnFwNHlieE5IaGhHWWVHQTF4cW5uS1BLc2hESS9rMW9aRVNRbFlPNFpF?=
 =?utf-8?B?RTZmam45bVNnZGpaME1aZ1JtMVJKd3dKaFN5ZkhITkJOblF1NUYwVk9scVpz?=
 =?utf-8?B?MHdFWWUrR0dUSXZINU9ON3JHcFU1WWtPVFZCeE9IejZjeWNQNi9QeTgrNHBH?=
 =?utf-8?B?SE5JNUtUQ3dLWnFzUVVORzB3K3hqOHRhVlBHTG9BMDBXQ2Z5alBWK2R5c2tR?=
 =?utf-8?B?dXg5K1dsWENUcG5yUVVXcUhaV0hnVHQ4Z21vRzI2UWNXVW12aVpSN1RieU8r?=
 =?utf-8?B?VFMrYjlOVzNCTVNkSi9RUXlWQS80ZmVvL2E0L1pyakhINFkyaFo3QW93dTRa?=
 =?utf-8?B?YXB4UnczNHhpNE9FOWZTV1UwNEEvZFNpcHY3LzJGdVFKYkpocmxXdkFWNVlZ?=
 =?utf-8?B?bE4xeDN5SEhvem1Wd1BvVlgyM2o4dFBkeWtvTXhlU3hiS290TExkVk9pMHlL?=
 =?utf-8?B?cDlteExMSmUyMjFmUStDQW5sMllnenhjZzVheEN6SjYzM0QyMDVBRVpLSndS?=
 =?utf-8?Q?cU/emGMxXrEKZ5q9WwqsQyRtZx0eQ3Oj/i7e8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF517B7003F.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0FRUUtRRUQ0c1JmdkFaNEhTY2doMW5NdThSYXJDbG1SU3kwWk1ZVmIrWkpx?=
 =?utf-8?B?RHpJUUxFczcwQlgzQkVEWStPTFg2NVBaVDZFUnhVSmxFL2NzcGlYUUR6NEtT?=
 =?utf-8?B?TVZkaVhHVVhyMFNvdTRYVFJ5Vzd3SmJZYTA2Ulh0SlhDRzhZVDlrWnd1RkYr?=
 =?utf-8?B?cXBvN1R3OWJ1L0NUSXEyQjBUdTVCbFZQS3JyYWtySFhITmhOY1FPczZZK3cw?=
 =?utf-8?B?b0VzdjRzdWZjcVFhVzdTT2UzaWsvUVNOSFd4TlFkUkZLVUt2KzBZRVhrVUZ6?=
 =?utf-8?B?L2p0WmVpOHVsYTREVXpmdmJaeEFsL0dLVEtPc0Y3NlV0NHdQbWJxb1pHbjlq?=
 =?utf-8?B?dXNTR1V6cW9ZdWVmMVIzZ2FtMzFQRitaQm14M0lJMkZ5NHlrNjAwcWJzaGIy?=
 =?utf-8?B?WlVTV3FpVjkwc1dTZjdGd3orWGF1Y280ZUdZc2tTVHM4bzFDMFY3aDI3RTIy?=
 =?utf-8?B?RzY5dzNiRk51bzUrM2tVOXAyVm1SUXA5Q2Voa3hHNEFHS2llOUNFK2VTdXJQ?=
 =?utf-8?B?dzEwUW52ckJyRU1Sejc1bmJPdTcvUHhJaXhxZ3dNT2VQQVRkK0lHeEltYW9K?=
 =?utf-8?B?Q3dOS2NvN3M1Y0VITndoUW03VWVwdmltTDN2Slh1MUhCWm1aZHZ1aGMxbzY4?=
 =?utf-8?B?a1lYZ1l4akZoSTNhMDcyb1pPSHlXdDlOVTVhL2xjMFhXb0VmVXdNWnJSc1E3?=
 =?utf-8?B?Q1dBL0ZoSUxKS1BxY1VZc1RwUTE2QURkZzg0clUybE5ubTRxZ0RrVHNOVHhX?=
 =?utf-8?B?dkVzeUJlM3ZBYXZkRUlIUXBhckwvVlRCUnNGYjV5a0FpcTlZaDluK01xSzhq?=
 =?utf-8?B?Vzh0OHFJOVpCWEIwalNDSmNtdVRxZnFWY3YwSlY1QnluTWpTMVRrTVJPK3or?=
 =?utf-8?B?QTdVcVg5dDFvOGxYVVd5bk9iK0QrNXBQczNIWS91Vjcwamd1Z1dqK3UvbWUv?=
 =?utf-8?B?OVlnYnhNeHoxSHpPU1ZtaGRzTjlEMkhLRzlQdU1lRFZKd0dMMmxxc1JKdGp0?=
 =?utf-8?B?YXloR1hMS1ZKZVM5Z1c0Snk5ZTRleUVQQWpJeEF1WHg5MC8wR1NiWEkzTnV4?=
 =?utf-8?B?eGZPdzBtVWRNdDBHVFM0OTY4cGFaUkdxN3FRT0tGT0w2cWNmcWt1clNJemZG?=
 =?utf-8?B?dzVRTEdIUmJ3UHB0Z0xZVjhsK0tuMlo0K1M1ZmpORFZjRFRVSlFOTjVLc3JE?=
 =?utf-8?B?VEhlY2d5RGZ1QmxpS3N4dDcrMy9kMmhZZUUwb0R0bGUvbVpkeVFUaU1DZ1Nn?=
 =?utf-8?B?ai9CcTBvZXlPbGgzTUpCd2ZtcGMvVlNsaGo5alM5R3psQVltTW11NzJacG5i?=
 =?utf-8?B?aU9aYVJiRjFZWThqRFgwYWhQU2pMT1lKVkd4RmJTUWs4MGNnSzBYZ1ZHclhr?=
 =?utf-8?B?V1ZYQmtocm91THNEM3l5SGRjcnpjUW9tTnZycGxZM0ZKYS9JVitxWG5UaUov?=
 =?utf-8?B?Vm4zRitaMTRiVjRlYVo0b3hYWnUxVGNadnBJSzhuSndpNjVrbkp2NmxIUnRY?=
 =?utf-8?B?L01PSE8vUXA2T09qUUpSMmh5emFGTVVsM2lqM1cxYXdLRzNneTlzNS9lZlBV?=
 =?utf-8?B?UU9NZHpWL3VyUytscWM1QVN3NmprWDMxVTFUajZYWWpBNHdDSFdYN2tYQzFh?=
 =?utf-8?B?eUlNNGNVU2lGdXg3NnZIcm5RU2FYYVJ2QzY3MU9mOWxENHdjOUlURks2b001?=
 =?utf-8?B?aytyYmpOWGFoMmpqZlNDSmZHTmY2SFBoRXRQZHB0TFZoeGx0Z0l6cnFYYTF4?=
 =?utf-8?B?U3NYOE1jalIwaExIV1RTSXdsTGRsMFR2WTBFbFlXOHdRVFZzWGxJZXhuMEN2?=
 =?utf-8?B?WitkeU1QWU80WE92RUt3Nnp0bkhIR0gyVjlJZjl0YmVrYVFtVklhRExPT1hz?=
 =?utf-8?B?Q2RCY3l2bmhOL1IxQk5rUmVKdTFQVXdjenNqWHFMcWloSDBxUU4yeS8vNE8z?=
 =?utf-8?B?RUwvaS8vYURnM3EwV1NSTjA1TkdkcEVjeFI3WmVUdVdXejZBUHNGTzlnWWlo?=
 =?utf-8?B?dW9FckNsTDFaNnkwY0hWTFRZMkpCK1hSZ05nTUdFV2lrMTJ3aytGakhkNWR5?=
 =?utf-8?B?QkVneHZOMDN0OXNQazF3VUIvYkdNMGJVUUZXeVhsZ2NCRnJZSmFtTHk2UkhE?=
 =?utf-8?B?ZGpERSs4OW9mbFFCaXVXV1dIUVhnRHRpQ2hEbzV4bE16Vk4wTHJWUW1la2pv?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 10HVyHc78lUuWj1HYtzfLpiZqfxTntjVpjT/mjNE6Z3RH1pFifcsf0x7kcZYFUvSc3Zol4M01Eid9M82UgVDjyoXDr/jQ4FDCtdmHH+12p1jEvd9fMtsSDXW8h38gZ2f4SYszN10m4D3Ed8Dizh6nZ5FPQT3/Dowe4RTeYM4nIcQZiOjkHvIkE3N4mVSTPauNCRWI1bcZe6/kktw57Tucr12HQvhUdHdx20QGU7ZeiDwI8SdyU4J/qPWwRiS7MTgs5XWBPSO1YIf/VnfM75g5YjV0HfJwU4htXv2LBCyAlQNCtGl27G8isdWV3nTAwAEbLEgUQKeByYzrVWCMcDTuhoB5aDQTFJtCAAII5o5sC5tquMO9NKUmsxQIINxbpFnNuAaXSNlbcH7Nuua+BSfHYqomRXSx4uuQeSNELxjKDOMqB6eXnI2JYywT6etDCKbk7qTdk4L3sj+YQ+C/mU4k5cfaY277tMOd/JdnjPmfUk2dyFhed/MZHsd8gzkhNSy6UyFGPEEgGMFoTAV34SdeMnAmNkpAMD4Zm1u8O+URuSknsFeC/5TvLCId/k9Zt4YwhMdxexGPGZ60p6mBHXeF7/xsHx27iKFFChl0rVCQpo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06cf558a-8f18-4fb0-7a9f-08ddc0b9e283
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF517B7003F.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 20:31:16.3775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6n6cfYs9D/iFnsvO9EJkIAL5edSF7ZgvsBwnAe4KBKIS2HrbFdijcqnXpXQdRpOOWrm95q3ZSVVvVwnwfHAYdczYw+C/IJmRdkpjVoDHJV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6125
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_06,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507110153
X-Proofpoint-GUID: URMg2byn2HweSuq052W9BmjGEBo9AbjC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE1NCBTYWx0ZWRfXzTMXvOJZrBXu
 6+vfoTy1MbvrMK1t/1cmiXk86Z9qEd5G1m/njYrFu9cZFz7Lbq3TTgZ7iyJBBVHqTGrLrSn3mx4
 NekvU8LeIoo3zB3ak4ck9jAnnlE5dKm6uDNqjSRrKsz2Qhz5PlYzBY7Iez5AUURFlisO1G9W8iw
 PbbxJi1LXpAJYmO1aOWHkdix5GpQfTvGPxRbOtXS7BQlODhzVp7K0HpG3BXU4pt1gKx9VJ6yU3Q
 CHF3FQTn+Q/X7p9e4VQ0EqjLAm7hwi6oMaJbFBgFaP8xp84mHIKWMQ3ldWoc9so49Vq+DLQvq5O
 sbBh4V+IsDiZo6M2ra3bRfFkWRJRGqZwQmV0Omi9ZCd6yfTknWPo+qvkIAMAiy0IEiwhCuqB9h5
 ELtPRhyy9Wq7MDJzhopL0lzXI2DrDKRrNo8k3KY3MIIBOuSTVZKmKs3L8Z2+N1ZJCWL2T3wm
X-Proofpoint-ORIG-GUID: URMg2byn2HweSuq052W9BmjGEBo9AbjC
X-Authority-Analysis: v=2.4 cv=OIEn3TaB c=1 sm=1 tr=0 ts=6871749e b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=EL8ExMSzLZdtij-m:21 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=edf1wS77AAAA:8
 a=hSkVLCK3AAAA:8 a=dZbOZ2KzAAAA:8 a=S7UowxOQi4_n8i_WndsA:9 a=QEXdDO2ut3YA:10
 a=DcSpbTIhAlouE1Uv7lRv:22 a=cQPPKAXgyycSBL8etih5:22
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/16/25 10:19PM, Edward Adam Davis wrote: > When it is
 clear that leafidx is too large, a warn is triggered to > distinguish it from
 other sizes. I'm not convinced this is useful. Without this patch, we will
 still return with a WARN_ON_ONCE a couple lines of code later. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uaKP7-0003pn-OG
Subject: Re: [Jfs-discussion] [PATCH] jfs: Issue a warning when leafidx is
 too large
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 6/16/25 10:19PM, Edward Adam Davis wrote:
> When it is clear that leafidx is too large, a warn is triggered to
> distinguish it from other sizes.

I'm not convinced this is useful. Without this patch, we will still 
return with a WARN_ON_ONCE a couple lines of code later.

> 
> Reported-by: syzbot+077d9ebda84f426a6a1e@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=077d9ebda84f426a6a1e
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_dmap.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 35e063c9f3a4..7e3c5f6826d8 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2856,9 +2856,13 @@ static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl)
>   static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
>   {
>   	int lp, pp, k;
> -	int max, size;
> +	int max, size, max_idx;
>   
>   	size = is_ctl ? CTLTREESIZE : TREESIZE;
> +	max_idx = is_ctl ? LPERCTL : LPERDMAP;
> +
> +	if (WARN_ON_ONCE(le32_to_cpu(tp->dmt_leafidx) >= max_idx))
> +		return;
>   
>   	/* pick up the index of the leaf for this leafno.
>   	 */



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
