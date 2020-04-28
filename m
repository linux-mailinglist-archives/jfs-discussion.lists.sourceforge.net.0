Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1C71BC5AD
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Apr 2020 18:47:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jTTO5-0006J2-Hi; Tue, 28 Apr 2020 16:47:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lgrosenthal@2rosenthals.com>) id 1jTTO3-0006Ik-LZ
 for jfs-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 16:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OxQiTMioLQ12gZW1iQTbzm9d46VcF/ciTL9unpbdJK8=; b=RoGr3LZq3SmwLBzymS06o70LbP
 FJy5phZngM0TXWHEuu0bJG/CXISuFJFvVj5kcJUUxmgSXCV5coSK8pt+Loaytc9P1oLNwAer3+JVg
 bzweoe5y5VsjfvtGEq4kejaT42mZjQVLmh6EeYpDSXG+oasGblEMGh8e9FPlmw9p09cs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OxQiTMioLQ12gZW1iQTbzm9d46VcF/ciTL9unpbdJK8=; b=QSy9X2cjgrobD/wQ8XuOZFC96g
 JeDaMIrnVP9IaLrQkBh68fMPe1oe8PpEHQid8V9uwCTGflq/wa8/BbY9Hl8f964KF4QOYaT3iHW4w
 Mtt+qOiieHVWqlJXpMEv59BZZPELaxBX4OiJdsHCewNwMn9olsZUZ/5e83wFuSvpbY2M=;
Received: from mail.2rosenthals.com ([74.101.171.114])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jTTO1-00FAPy-MU
 for jfs-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 16:47:11 +0000
Received: from [192.168.100.2] (port=54124 helo=2rosenthals.com)
 by mail.2rosenthals.com with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <lgrosenthal@2rosenthals.com>) id 1jTTNl-0006yq-0b
 for jfs-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 12:46:53 -0400
Received: from [192.168.100.201] (account lgrosenthal@2rosenthals.com HELO
 [192.168.100.19]) by 2rosenthals.com (CommuniGate Pro SMTP 5.4.10)
 with ESMTPSA id 737958 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 Apr 2020 12:46:54 -0400
X-CTCH-RefID: str=0001.0A02020A.5EA85DFD.0014, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
To: JFS Discussion List <jfs-discussion@lists.sourceforge.net>
References: <5E9BE1D9.701@2rosenthals.com>
 <alpine.DEB.2.22.395.2004280859300.10513@trent.utfs.org>
From: Lewis G Rosenthal <lgrosenthal@2rosenthals.com>
Organization: Rosenthal & Rosenthal, LLC
Message-ID: <5EA85DFC.5040709@2rosenthals.com>
Date: Tue, 28 Apr 2020 12:46:52 -0400
User-Agent: Mozilla/5.0 (OS/2; Warp 4.5; rv:38.0) Gecko/20100101 Firefox/38.0
 SeaMonkey/2.35
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.395.2004280859300.10513@trent.utfs.org>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: xs4all.nl]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jTTO1-00FAPy-MU
Subject: Re: [Jfs-discussion] [SOT] JFS on OS/2: LVMALERT technical info
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

On 04/28/20 03:07 am, Christian Kujau wrote:
> On Sun, 19 Apr 2020, Lewis G Rosenthal wrote:
>> Does anyone happen to have any technical info on the purpose of LVMALERT.EXE?
>> On OS/2, this is normally run as a daemon, started in CONFIG.SYS from a RUN
> You may have found out by now, but an OS/2 eZine page[0] described it as:
>
>    "Support program for the Logical Volume Manger, introduced since WSeB."
>
> And another page[1] lists the program as "not necessary" and remarks:
>
>    "LVMALERT.EXE gives a warning if you use fdisk"
>
> So, maybe LVMALERT isn't needed after all for LVM to function?
>
> In any case, I'd suggest to contact more OS/2 centric communities out
> there (forums, mailinglists, IRC channels), they may be able to provide
> more meaningful information than my web searches from above.
>
> Good luck,
> C.
>
> [0] http://www.os2ezine.com/20030516/page_4.html
> [1] https://vissesh.home.xs4all.nl/multiboot/ecs-os2/lvm.html

Thanks, Christian. Indeed, this much we did know. Upon closer examination by 
one of engineers, it appears to be responsible for requesting bad block info 
from all mounted filesystems (not just JFS) and reporting them to the system 
log via FFST (First Failure Support Technology). It gets this info by 
issuing an IOCTL_DISK/DSK_LVMMGMT (DSK_LVMMGMT seems to be described in some 
detail in the DDK).

Due to the timing of the release of this component with JFS (which, on OS/2, 
is dependent upon LVM), the two have been linked, though they apparently 
have little to do with one another. The lack of documentation from IBM has 
made this difficult to determine.

Again, thanks for following up. I guess Sjoerd's reference to a "warning 
when running FDISK" was really some notification about the discovery of bad 
block info and it being transferred (while I actually do have FFST/2 running 
on this particular system, and I've had drives develop bad blocks, I don't 
recall ever seeing such a warning come up, but I couldn't swear to anything).

No matter, this is indeed OT for this list. I appreciate the follow-up, however.

Cheers, and stay safe.

-- 
Lewis
-------------------------------------------------------------
Lewis G Rosenthal, CNA, CLP, CLE, CWTS, EA
Rosenthal & Rosenthal, LLC                www.2rosenthals.com
visit my IT blog                www.2rosenthals.net/wordpress
-------------------------------------------------------------



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
