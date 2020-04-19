Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC121AF74D
	for <lists+jfs-discussion@lfdr.de>; Sun, 19 Apr 2020 07:45:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jQ2lR-0001w9-R1; Sun, 19 Apr 2020 05:45:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lgrosenthal@2rosenthals.com>) id 1jQ2lQ-0001w2-9k
 for jfs-discussion@lists.sourceforge.net; Sun, 19 Apr 2020 05:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CfmAsxUAJisbIDH1EF22Y3BJzulCNoAtb0+rPVZx/oc=; b=Iw3be7WQp1VR7FzuCis4m5Useq
 K+KtjV3EOVu9NwlnmZCiFQbnz1d0iau72tPqj8gyiUL5LIfknTpKd74G3JHt48mBGGnES7bQU1Pds
 BT4wcYlXyi4hm2H4uHkojcl3XUL24vWE5SZuPzHXi+LQM/5la7UGnAG1PWP1/yK2QFNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CfmAsxUAJisbIDH1EF22Y3BJzulCNoAtb0+rPVZx/oc=; b=L
 Ej2kpPzJaRihN0uosLQVq6qbVHJwYwtHZpb5FOwwP3hy5c1w2XB9r05dvKdpV0qGD5MSmHmO/NxWb
 UEmZ7aqoj+nEVb+3n0xVG6re2Pzscx5wtJUMSvjAoIQXKScZ9S4YP/yMvm870glIP6d0m7KE5OJi3
 Njp5kq5agvd3Liq0=;
Received: from mail.2rosenthals.com ([74.101.171.114])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jQ2lO-005mlR-8C
 for jfs-discussion@lists.sourceforge.net; Sun, 19 Apr 2020 05:45:08 +0000
Received: from [192.168.100.2] (port=56549 helo=2rosenthals.com)
 by mail.2rosenthals.com with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <lgrosenthal@2rosenthals.com>) id 1jQ2Wp-00034G-13
 for jfs-discussion@lists.sourceforge.net; Sun, 19 Apr 2020 01:30:03 -0400
Received: from [192.168.100.201] (account lgrosenthal@2rosenthals.com HELO
 [192.168.100.19]) by 2rosenthals.com (CommuniGate Pro SMTP 5.4.10)
 with ESMTPSA id 717165 for jfs-discussion@lists.sourceforge.net;
 Sun, 19 Apr 2020 01:30:04 -0400
X-CTCH-RefID: str=0001.0A02020A.5E9BE1DB.0020, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
To: JFS Discussion List <jfs-discussion@lists.sourceforge.net>
From: Lewis G Rosenthal <lgrosenthal@2rosenthals.com>
Organization: Rosenthal & Rosenthal, LLC
Message-ID: <5E9BE1D9.701@2rosenthals.com>
Date: Sun, 19 Apr 2020 01:30:01 -0400
User-Agent: Mozilla/5.0 (OS/2; Warp 4.5; rv:38.0) Gecko/20100101 Firefox/38.0
 SeaMonkey/2.35
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 2rosenthals.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jQ2lO-005mlR-8C
Subject: [Jfs-discussion] [SOT] JFS on OS/2: LVMALERT technical info
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

Hi, all...

While I know that this list is focused on JFS on Linux, I also know that 
this is the most concentrated group of JFS knowledge on the planet, and that 
at least some of you were intimately involved with the OS/2 port back in the 
day.

I'm presently the Managing Member of Arca Noae, LLC 
(https://www.arcanoae.com). We produce a licensed OS/2-based distro, ArcaOS, 
which is currently maintained (5.0.5 is in late beta as I write this), and 
we have lots of new things going on for the platform, including UEFI and GPT 
support (read: I'm not asking about ancient history so I can install a hobby 
system in my basement; this is a serious technical inquiry).

Does anyone happen to have any technical info on the purpose of 
LVMALERT.EXE? On OS/2, this is normally run as a daemon, started in 
CONFIG.SYS from a RUN statement. It seems to be completely undocumented, 
however (unlike LVM.EXE and EXTENDFS.EXE).

Any assistance is greatly appreciated.

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
