Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 598719B5523
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Oct 2024 22:35:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t5trj-0006Lr-Tl;
	Tue, 29 Oct 2024 21:35:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1t5tri-0006Lb-1Z
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Oct 2024 21:35:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fqMIgGONChE8VU3eBeoI/cjn3XbC7oKePCG9I2k3BeY=; b=PT1yHh6hA22u5MOKbjSe3/isGK
 MBTc4nTQfBzQo6f+B4StVZunXr2hEydyemKF6XYduZ+jnqly9c6C8pwLGUuu3WGzLBeD1ZuTdZwVH
 8foskmZ6XvB7LM+DGzSuKbb0A1DkhIPPnUYuiuGNswW+mtqwg1Y08K5+vVQpgf9sH0es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fqMIgGONChE8VU3eBeoI/cjn3XbC7oKePCG9I2k3BeY=; b=csVvUuhtEUQQ0wC50ienOAOIxO
 QntFAng7gcsYYdKYg/obStt08t02XLflNI0G2MPrXlBab121sKxV3nrbnEdZ6N1JifT1Dtr+Y2kDI
 P3LuVx3RPyLaWhYfd02Epo3zV1ncozvuv1BYy6v6yyKHCTyjRiLcuXtN1fR1m2Bki1AQ=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5trg-0001Vh-V8 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Oct 2024 21:35:01 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49TGfV1M030913;
 Tue, 29 Oct 2024 21:34:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=fqMIgGONChE8VU3eBeoI/cjn3XbC7oKePCG9I2k3BeY=; b=
 Mlk3iFx8I0Lih1gf4af1TCThwyuNES56EUi9eLZlQ3y45qqSM3qt41dWUtHjJls3
 YzAL+swuuWT+VYTdkrCymQtdSiB1coCjjG8dZEIo+3Bfq1VdhBQjn1bUpvyiWvgQ
 KkpdyqoxgXAlO/BVGftifuVS2I5H5kRgduCr9zw2IxbrwmS9dgy3Hh231+8X/8xd
 R8Dja6Y9vPUUtIVbHk1cq35m8VatEFnqMuQOu+E/dyT4JXUd3CYhzbAdJY18c8zA
 7wkBsSYbyGtwtEdZFk/U55oItpXby8mPWxD3LHGrybNdxnj3N/WY8QawJX85wz/W
 Y4hPQRaxZMQ802LtWjSLyw==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42grdp6nh3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2024 21:34:53 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 49TJk1iq010273; Tue, 29 Oct 2024 21:34:52 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2041.outbound.protection.outlook.com [104.47.55.41])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 42hn8xg1wd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2024 21:34:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E7aCmYbINynF8jJh+PZjznHf1d0RdZImkYc4JonPd+nz+641+5Ris+X4Y+y856+cEnnpJnIUbkaVnUzaEwzoKIBNq4EShT2XF+LyPA4Mb0LeWWUK5Xr5BPyy0D1tN1QpSnor80c6+OdwS4ho+sUHlUHjPrlWz4hWbVc2w2IXXVyofL7pC6n2fojX98/3hDZnWmWjK8oNc6vVm2+pIaVNFEy3JBneF7BknYeYAQIzODNxWBPrNDnUm28L4jhii4qbYxDoRPT/S4IsQkds8Vh3FQzoxfgkLBvC8xfXYnX+AZHa0APk0lKlt8V7GrrOUgLexeUwEeJRHynE7tQiTC3X3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fqMIgGONChE8VU3eBeoI/cjn3XbC7oKePCG9I2k3BeY=;
 b=qYOhppJ0jTvsOH6R2ftHs8+0G7jtKHkvt14O+vNa7mIrDZnGZ0ee+oBA3oj0BsZDOYcQl6cwDKYxe14g+QEWo8Yy4FVOY4WlzSzU0MjsCkY0785I+4nkZxkFz+VnvpDjA13OZtDos13Q3M8H39+3rLhbdD6e19RpgrlAiHvyC7ZqNcpYKZyM1J7wqHBjBxL5Wqz1P5Eo4zdXpjNxoiUX0ENenvCHs7gKttAexodzt+Wi5ttQAjOhIVlooMUtkZVtUiHPyUMj7vaUirpmJp32hsEgK+fLyj/A78v+IafAUyiLXtBS4ZTWAEWQfM+LodI5eAdv89CAj9sCVBZX4Nrs7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fqMIgGONChE8VU3eBeoI/cjn3XbC7oKePCG9I2k3BeY=;
 b=qg8Bi+daMkWnFWf/dxLe2ifmEBwFaNBHUoAGojRLLeMKVvjmg5N7F4fuXaGQrXZZxks1vo/cn8WFBkOYlNo6WXatKF5VNpwshkDnkHfGsH7s0dQViQPihJru3N1zr2wMXp+ZtOQ+c2q0aMNlhE/ll6o5ELujgX1v7TlNmXFprT0=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH8PR10MB6454.namprd10.prod.outlook.com (2603:10b6:510:22e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 21:34:49 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8114.015; Tue, 29 Oct 2024
 21:34:49 +0000
Message-ID: <baaf7a6a-9c61-425d-a172-13c5b802eb71@oracle.com>
Date: Tue, 29 Oct 2024 16:34:47 -0500
User-Agent: Mozilla Thunderbird
To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>, eadavis@qq.com,
 ghandatmanas@gmail.com, osmtendev@gmail.com
References: <20240928083722.2317029-1-ghanshyam1898@gmail.com>
Content-Language: en-US
In-Reply-To: <20240928083722.2317029-1-ghanshyam1898@gmail.com>
X-ClientProxiedBy: CH2PR14CA0060.namprd14.prod.outlook.com
 (2603:10b6:610:56::40) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH8PR10MB6454:EE_
X-MS-Office365-Filtering-Correlation-Id: ba23fa62-440a-4ea2-1b43-08dcf8618451
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SG1mckt5U25zR0lFdWhPRWhaVkFpTVExdHN1dkZpdUdjcmpIcG00TThIM2d0?=
 =?utf-8?B?Qm9HZ1NKNzdqOEw2Mlgzd0psRDlKT1g0K0pYSnhYOFptOEptT2ZLTWFCc2FO?=
 =?utf-8?B?ZDlwL05lSHJEVjRjMFBxbzA3UWtyUkR1M1JPclR3U1lMNWhFWGNJS0dMZVl1?=
 =?utf-8?B?MFJlMGV4S3BZeWR1SzdYeDlCKzEyTzRNZUlkT0VBNldWaG1sZ29iVG9GelVZ?=
 =?utf-8?B?SCtFV1lNUHo5ck5kQ29xdWV4VTd2RTRBb3BneVF2RDdjRERZSUlnbzZtMzUv?=
 =?utf-8?B?S2F0eEU0MWVEY2lsclhnT1RwcXVuOEVDeFluMlV3eVA4M3FpdnpKSHpEWXZY?=
 =?utf-8?B?Mk5SSElFSjhZdjZvMUNscjhITmdIRTVnMjc0enEyVC8rOTNvdktGNFRZN0cy?=
 =?utf-8?B?aXhQYlF6RmhaVTFtdG5OMWd4VFNSMWZtZ3l3aHpYV05MdmozOTNiR0JCT0lp?=
 =?utf-8?B?bCtTdjJqOVQ5NDlYL3FPUFoyNzN4UjN2RlZxb1ZxTmlIdi9mZk1MSERkZ0ZO?=
 =?utf-8?B?OEpRRGpwa2p3K29CcFBpb3Ewc3pvNFBlUUlwUGNzWnd2cDFSLzRNRkNaR1Mw?=
 =?utf-8?B?Uzg2NHB0ZE9mbDRvT1lEVDgzUVBFcThUb3Q2WktaUTFTK3dRNDVXYkxtVjZS?=
 =?utf-8?B?TFpBa0tLYkd5Wkt1bllPT2VDMVFLRlR1TDViL2FEMFU0M2xZcnZyajlPbGN0?=
 =?utf-8?B?RVBPVnlRWGhxd2FUaGdqVEM1YTVoSWJQOXlkeUlLT1EvTlBtbTFsSDZ0eEFM?=
 =?utf-8?B?eCtENDRBc1BWZEpNT1AzeDk4NXBHS2Rza0JHOTJLbWNxZnlEeTQ4ckx5VXZ4?=
 =?utf-8?B?WWF1MGVhTGV1U25mT2x4SUMrTzBDeHNmUDQzejNRVE12VndabXdja2g1ZUEv?=
 =?utf-8?B?YUd1bTFoejJ2RVo4ek9weWFhbllQcVhHeUtweXE4a0xVcDl2Y1JsVWcwTG9Z?=
 =?utf-8?B?V1IrK2d1TktPSDRLYVR5VE9tS1NuNG9SakFnaUhkdFFUa3BjbDcyMUovQ09y?=
 =?utf-8?B?SmVKR2pzT0xHTFVpRmtNd3J1dnhXc0NRbUpGOGpVS3dmMHpqdy82OHpOYXND?=
 =?utf-8?B?bXhrRmhXY3Jwdkx2SkkwQUpobXJONWIxaHplNW1KVkc4aFN3aUM2RHRBSyti?=
 =?utf-8?B?dlpUR2UxSUplQy85MjA2TS9oYWdmOVN2UjgwYVJiTlNmcU1xVEdqcnhqOXVS?=
 =?utf-8?B?NDVxVXJpS2dxVnozZjRaeHgxOGZodW5pZGl3QVNjOTNXLzlKUmFKYzV0Qmha?=
 =?utf-8?B?SjNmRm1EVVRuM3RXSDVXeG8yMUxVdkNWamxPVEhWOTYvTlhFQ3p1QkhPL0s2?=
 =?utf-8?B?bjRmczVyVldHOXIvMmluZUpWS3BJNWVCdnpubGJQRkNuc29jR1h0ZmhVNUF4?=
 =?utf-8?B?UVcvNkZpUVU5QnBEVkVuWUEwY3NlVlkwZ2lsTUlmN1hTZjNMdTJFK3g3WXd2?=
 =?utf-8?B?K2ZtZCtSUmRrRzE0aDRmK0VMeGI1M25QMjNsQ0FqUHV1OEpQbUxVaXdNSmtN?=
 =?utf-8?B?TXFZVlpEM3lpTGxkY0dtOU5uQWhEeGw2TjNNbnZ2b2lCdzBOdHBQZ1k3NEkx?=
 =?utf-8?B?ZmQwK3NTcEFSRVQ1SjRRQTZLZFIvNzdyd1VYdC9wVnRtemltN2ZqMFBVQm96?=
 =?utf-8?B?S1cyRUsxdU5mSmFhK0F4cmlnQzBXQk9kb1BqZElzbUtTZmVYRWViUGtsNUxB?=
 =?utf-8?Q?Lmq0UWo5U2iEpJcDeXNa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWRsR01Ic0tPK3hzNkZVeEs2ZHpRWjJrenhFTVh0NmM1U1JKQmpNYWxpUDV0?=
 =?utf-8?B?WWEzd1VMUzVqOHhmZmhNS21FcTRFaGlra1U1ZTBxZDc3Z1B2cHorUE51b3cv?=
 =?utf-8?B?T3BGb2R0SUpGUW9kaUEwRE1oVGNoN3J5V3k2YWhBWTExb3FuYkJOSnVCOEU3?=
 =?utf-8?B?d20xbXNBZjJvcXZWb0UzL2pUZFJodUZNNlNaLysrVjA5dTY5S2lmS0VzY2d1?=
 =?utf-8?B?VHduYlJmcGZRVlBjYVh5Rm5JeXBUZUt0VktuaWtWMDhJNU4zRkV3RGZpeWY2?=
 =?utf-8?B?aWRCSVdHcUYxR09iZW9uSmRuNXdTQ3BuZXB2UDdReVpid1dPUFk0TVlubTVD?=
 =?utf-8?B?ZTNaeW1wOUg4dUFGL0djL0ZiK2NhcDNSbWV3Z3dmZ0h1Q1hSbHdpYVdzVDhV?=
 =?utf-8?B?NGNDdU4zWHR1S3VQNGZ6bHVULy9sM3lPVURLVGVuNi9NRSs3cEFiRC9aUk5k?=
 =?utf-8?B?RWZvcG5VOUxZenV1MlUzOWxUYzVvZ01FZHdKWkk3N1Q3elFYR1ZzTU5WQlNQ?=
 =?utf-8?B?d2Y2VmtkNG5UaU43SkRiMnkyNkxKT1FBMDJmMUZSN2RFVUp5Y3dYcWFSN0R5?=
 =?utf-8?B?OUFLZHcxR3Q3UUFGRlhLUGpKR0JvMHZ0OW1LUmZ2aHhJSTVFc2MyZk5IblRH?=
 =?utf-8?B?NW5qSUhmZmVrR09Wc0hPTG1kb3N1KzE4akdIaVBDQ3cvU202TUdTZ3FCOG5I?=
 =?utf-8?B?N25hcTQxU2ZicVlXY3N1aDJoZnVNQTlHRXEvV2x3ekMyRzFzUTZ6MjltTUxP?=
 =?utf-8?B?QjdCUlZrTXFNUDFhK3NhQmNXZEkxRUFneGhBSXhFQUtadSs0aXlkYTkvdW1Y?=
 =?utf-8?B?RGthd29pWWpaMU92Rm9RcXBSVjRrVjlTaHdCbXEwQkJmRUNPME94eDh4YXJm?=
 =?utf-8?B?R0t2RmJjMVJ6ZFlUMm1KbzFCaGV0emkxQzdqcXlqRVVJbkE2UGhOUVh2Z0hJ?=
 =?utf-8?B?cm9mKzF1cUFMQW5rVjBqVmRLQndWSlB3RXRhZjRYNDQyVVRVSmt4cThYdDli?=
 =?utf-8?B?MEhEb0ppaU5Xa2FFMzk1SzVaRmEwVnZCNkwvS3J2WDkrL2xXY0poZG9OZHp5?=
 =?utf-8?B?cTk1M0ZYaTVMTlQ4cTNSVm1rR09RZ0hFaXhjUzBPWDBmUjhzNDNVT1VSMnFM?=
 =?utf-8?B?cDQ0bVRiQ1pONTUvTE4rWDVRbCtFeFpUckdneVV1bUlIb085Q3pTMUlpcitn?=
 =?utf-8?B?ZElYVnN6MENKM1g3dmtaQlg0VzZYMElLNTdMZkdoUi9yQTJObW40SzE3VXk0?=
 =?utf-8?B?dW1YRmdGQjJTeUl0TmEzNTlhWEJIbXNCWG9RUHVhYTJmZ2xVWkM2d2svNEQx?=
 =?utf-8?B?UHpqUlRKOExGQXpURWIxS2w4T0hlRzc2ZjM0RTcwdlAvMXExN3NpcVNhWkYy?=
 =?utf-8?B?SXdyejdLenY1OHNGTnhtb0loTlBTUkRFSjNWcUpyTW9wbUF2RjhvREc0eDdy?=
 =?utf-8?B?b0Y1ODQ0MHJyV29vTUtjRU0yZG9ZY2ozc3A0V3VFdjF6RGk4QW5jQUtuK2RQ?=
 =?utf-8?B?YUNsRHFnQUthSVQvWmRCdXRtN1FVcWJLbzBqUkR6aEloeDZKTm5JTHYvUzBj?=
 =?utf-8?B?RFNaUCt0a3FOcGNVSENHR0M0NjBDK0dKKzRWWEdwbkhaMUV5UEd2SGVPeGl6?=
 =?utf-8?B?TGdqUCtsL0lqWHRmZFJoSFdnKzNFaHZETE01RVJzSWJ5bzNLV2U2M1J1cElo?=
 =?utf-8?B?U1VHWlQwaUoyY2RwTUZFRjhGT1pnc1QvSnh6dkZGeHdnQ2UxWDZSa3lhSlhr?=
 =?utf-8?B?a0tvU2tnVlgwWDN5VWQ5RzczZGpxamhxUEc1T3JKdHFrZlhSWmJMSHJUQ1oz?=
 =?utf-8?B?WWdrME9DY1JwTlRzMWg3TWExd2d0Mm1VVXo1bHc0OERDZjlhRjJieFdGVDFD?=
 =?utf-8?B?V3NDNmlwVHF6VFpBanRiWkZFVzg3SkhJbXY5ZXBOYzkzRHEwM09NYkp6SVlp?=
 =?utf-8?B?Z2lCUjVDUXFQYlNYeG9BRHpzTkQ5ZnAzbzZsVkYraktCdGJPRCtxRTZYdCtk?=
 =?utf-8?B?OXY3QmVaaGRRVjMyY1o5VFFiaUVMWlRHaEVOT1pMZ3NYMG9Bai9zcGlsZm8z?=
 =?utf-8?B?NWtLUm54U3Z5VDBaMFJ3WnVwQ0dnYW1HaERHNVRBTTFudk8rRVBKVXc3UndQ?=
 =?utf-8?B?NU4rWHYxZll6WjNvdk9hV0xQZG94VzFlSWdOUHBRUnBoOGg2VHQvOVFWZUdk?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: CxahtXbHgNkTs/Pin8niU4iBK+0yrVkuoglQdNUH2NIvWYh8VX32UD6dqUmo7Wp6oBv/7nBrl8bCBzUKFGDvIJIbw82OK5CAmgYNlg39/fDrDbqY2fdy5w+HnIzGzvyfyNm7V/RVQ4JxyO0mON5dHK03J2/UrwkSjS3SzQZYGWIcPtL1rzrnnNl/Uxtvc92nzO+vuODGNLpyO+CtgzBqcIhiDs4G7Qz95NQRl5LkQqCRM6MwOT0EYEd1DShGHNXLWDKRVYBxRGUZnKy/Pf0kFmwX/cBPEZrSR5OqDnwGLEKbv0ROIRs/Q7Q6klPYQtCTj1N5uwLbka6Ja2i5o1QHuUc1c8CZV/umzDuiF93FFU/h+nfw48vE5R2TkIeVj3SnXDCpL0N9nPMy/Wxgxbuw+NQ+F+YbPt0Z4fs5/n9rY1XIeARWvM/15DKoSsL9Zhnk73Wf9YiSrQtlvrcRs2nPMaT/O3/k/40tbhxlpjkEfBvkgNGc/JfLD/Lb8yT7m6L0qEqX3Al4+d/5OdA/jV2oRDrK8cWCruMfrGd9W0Q64FjDvXmLPJRF3k0KSBRcM2QfGyepXSk91NJFkYXkKGtYUPZog3N3xMCsfn0/uz7eLJU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba23fa62-440a-4ea2-1b43-08dcf8618451
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 21:34:49.7399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TvAkHL4ln53gGvwDo+te6bKZ4vlVwyKNV6ruiw220AX/HwjhJ1pMzzG6z8ZzS8gePGgL0HF96MbMme5el6zKQouk0wNkunsMhHoW6kZnAnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6454
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_16,2024-10-29_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 spamscore=0
 phishscore=0 suspectscore=0 malwarescore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410290162
X-Proofpoint-ORIG-GUID: jdUN5eglB9j5hUcCUSCtx3M1FjnpBvBb
X-Proofpoint-GUID: jdUN5eglB9j5hUcCUSCtx3M1FjnpBvBb
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/28/24 3:37AM, Ghanshyam Agrawal wrote: > The value of
 stbl can be sometimes out of bounds due > to a bad filesystem. Added a check
 with appopriate return > of error code in that case. > > Reporte [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t5trg-0001Vh-V8
Subject: Re: [Jfs-discussion] [PATCH] jfs: array-index-out-of-bounds fix in
 dtReadFirst
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
Cc: syzbot+65fa06e29859e41a83f3@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 9/28/24 3:37AM, Ghanshyam Agrawal wrote:
> The value of stbl can be sometimes out of bounds due
> to a bad filesystem. Added a check with appopriate return
> of error code in that case.
> 
> Reported-by: syzbot+65fa06e29859e41a83f3@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=65fa06e29859e41a83f3
> Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
> ---
>   fs/jfs/jfs_dtree.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 5d3127ca68a4..69fd936fbdb3 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -3086,6 +3086,13 @@ static int dtReadFirst(struct inode *ip, struct btstack * btstack)
>   
>   		/* get the leftmost entry */
>   		stbl = DT_GETSTBL(p);
> +
> +		if (stbl[0] < 0 || stbl[0] > 127) {

Technically, a signed 8-bit integer cannot exceed 127, but since the 
compiler will know that and optimize it out, I'll leave it in because it 
looks more complete.

> +			DT_PUTPAGE(mp);
> +			jfs_error(ip->i_sb, "stbl[0] out of bound\n");
> +			return -EIO;
> +		}
> +
>   		xd = (pxd_t *) & p->slot[stbl[0]];
>   
>   		/* get the child page block address */

Looks good. I'll apply this.

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
