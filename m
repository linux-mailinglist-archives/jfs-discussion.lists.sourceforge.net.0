Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6B52CA80D
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Dec 2020 17:20:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kk8Nv-0000uU-Kj; Tue, 01 Dec 2020 16:20:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1kk8Nv-0000uK-5k
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 16:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L4ogHO4qas9qCnlGojNE1+NljBy85/BB4dtLPmePa6k=; b=W3fmZylCy/DUOeQg46bjJxvjyU
 2tckJvRLFjQJeCBtYR/naYWnB9kNx+ah1eGnGXkP7BNzKK+GaXGfCsb5k9CnTitwImvMRW8sovpcF
 0J+bjE4eGam/ucGMdkBSdxvwNU1D9I++uwusx/MBVQpDoP3RBvqIbgsvH15+5XwwG1l8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L4ogHO4qas9qCnlGojNE1+NljBy85/BB4dtLPmePa6k=; b=HZ65qchB36DOLIvhy7zEh+k0Y6
 xa3jER6tKlmmisXQUD3EPJVC6iQeqLeLA5HwUhN1u4gCL0li++VkM6sOAczS9hISX+7xCFhB15hg7
 s6aqbhNeFGUZr09wc5Bwy9VwSMxvJe/8dr35CMP1ghAw/PDvAguagFyQJzla7w2uHEMU=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kk8No-009S6E-5e
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 16:20:10 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1G4tcC005359
 for <jfs-discussion@lists.sourceforge.net>; Tue, 1 Dec 2020 16:19:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : references :
 from : subject : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=L4ogHO4qas9qCnlGojNE1+NljBy85/BB4dtLPmePa6k=;
 b=B5BHTYSLA9OZaLKZId5TvD+HSeOPbRlZQte9k02vyhQeP7kmqFSHBBsD54UVHC+JSezz
 juxWGeXKqk6fMau99LoO8OrRVISrQNW4IPGgw8EOeJsaBy9+WsSK7pZOtaE4iJ/eRuth
 OvTDk2AoEfRIVWHIUS0xuwEta89Er48YzeO9uzvsFdTnHisTTFShTvlJ9YAc7HfJdIk6
 qVi+pAntlwNVStOGf3L+HWmMOtmUwG69LQqJwzhMM2lYZuHX/fvxSNdGN5lfqWtL3CAK
 7YcwfywKF6vAKNJwKUIQdxLzwSbqVXxfGkediY48SfNihwswlG7a9A+zEQ2aJ+XGb/Wr SA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 353egkkdkb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <jfs-discussion@lists.sourceforge.net>; Tue, 01 Dec 2020 16:19:51 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1G6OT0072734
 for <jfs-discussion@lists.sourceforge.net>; Tue, 1 Dec 2020 16:19:50 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 35404n2svn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Tue, 01 Dec 2020 16:19:50 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B1GJogB015810
 for <jfs-discussion@lists.sourceforge.net>; Tue, 1 Dec 2020 16:19:50 GMT
Received: from [192.168.0.190] (/68.201.65.98)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Dec 2020 08:19:50 -0800
To: jfs-discussion@lists.sourceforge.net
References: <20201130230106.7786b37a@Phenom-II-x6.niklas.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <aeabe636-8be8-9477-659d-af878528b410@oracle.com>
Date: Tue, 1 Dec 2020 10:19:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201130230106.7786b37a@Phenom-II-x6.niklas.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9822
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 phishscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012010101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9822
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 suspectscore=1
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012010101
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kk8No-009S6E-5e
Subject: Re: [Jfs-discussion] MB <-> HDD incompatibility. Crash. I/O error.
 Trying to update backup.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 11/30/20 10:01 PM, David Niklas wrote:
> Hi,
> I've been trouble shooting HDDs to MB communication errors for over a
> week now and I found out that one of my HDDs doesn't like to talk to my
> MBs SATA port. The MB is a ASRock B550 TAICHI. It's port is backed by the
> ASMedia ASM1061. The exact errors were READ and WRITE FPDMA QUEUED.
> I've found a solution in swapping the HDD SATA cables around to get a
> working solution.
> 
> Of course, this seems that it wouldn't involve JFS, but I wanted to
> explain exactly what my situation is.
> 
> During my experiments trying to find what was causing the problems I
> accidentally disconnected some of my drives. They are in RAID6/60. On top
> of that RAID6/60 array is JFS.
> 
> Ever since that time, I've gotten constant "metapage_read_end_io: I/O
> error" messages from my kernel. I can't fsck the FS.
> I have a backup and I want to bring it up-to-date with the current state
> of the FS. The problem is that I keep getting those errors.
> I diff'ed one of the dirs and dar says that everything is there and
> intact, but I got a lot of those errors.
> 
> I need to know, do they mean?
> What is a metapage?

A metapage is just a page of metadata, which could be a lot of things. 
Anything but file data.

> Is it a temporary failure? Is it a permanent "can't access this sector"
> error?

All the metadata is managed in 4kb pages, so it appears that it is 
failing to read page of metadata. Unfortunately, the error message 
doesn't tell you what it is trying to read or where. If there is some 
kind of filesystem corruption, it could be trying to read something invalid.

Mounting the volume read-only should result in a little less i/o and can 
prevent any further damage to the file system (if there is any), but I 
doubt it makes the problem go away.

Or you could try reading the raw partition to see if you get i/o errors 
with jfs out of the picture. "dd if=/dev/... of=/dev/null" or something.

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
