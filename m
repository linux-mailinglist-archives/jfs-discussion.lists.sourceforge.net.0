Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CD9669B51
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Jan 2023 16:02:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pGLZS-0000af-ON;
	Fri, 13 Jan 2023 15:02:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <harald@skogtun.org>) id 1pGKSQ-0007VI-J7
 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Jan 2023 13:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5KsLnX8REZqJ06dCgBsMbb70EKP4NApu5OUKtsyxy/0=; b=AKFdBwrPaVoBhTfJJGkSAZv4Jg
 20uMPsFd8ReH5ti7UzU1NxZv14VnNgDVBlWgvBekuGPE5cSJIsEOnL/rIDThsoMNoUVTK+cVXDkuh
 pj2zKrgCepeU8Qg0rHWCBThCDn4Eluqwl/OvsoOyt1BESIbSFKeI6dfOZWxjcg7BgHew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5KsLnX8REZqJ06dCgBsMbb70EKP4NApu5OUKtsyxy/0=; b=AfA0Bj3euSXyVoIiZ0RktyamSP
 eIsOBuNYxbRA4H6Fx6cda78v5EMCd6JNbim0iTc6ijXxn3s6efq8eTQk8JftmyMMN3PMttwIpwPgN
 yNUiurar5VCgM9h1jO4YOzRhXuFHy+c0LOMQuP3ODP3v3/B5xcu4zT/bgxEn8mZ5Hb3w=;
Received: from smtp.domeneshop.no ([194.63.252.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pGKSM-0005ir-VJ for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Jan 2023 13:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=skogtun.org
 ; s=ds202212;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5KsLnX8REZqJ06dCgBsMbb70EKP4NApu5OUKtsyxy/0=; b=JFd+FBnIimkD4WNXJyH6GBDyZk
 C6f8K6MtRPaOtaYGH94LwJXnxsi5bW/TTCCfQeqfAo1zbO5tt71N9YpQJ/QBbL5lLGgzKatQ5uiBx
 AidCFzg0Q4C742ceXv7GQbXA2LjOpRX68RcVJcXJwY42+F/sUDi/FrbBatUzJBZvOkO7F3jIMaOrh
 lkHhfYuw/+JUPzqnwI3Q7eGsQWB8KyirMwlXGlgKgvbQPhk4YA9JoyUoi1r07dBfpYHPFNOXWCIRQ
 UnLncpVQxgKGGxQ9J1/ObZfzMtYafKZ5xkcUu1MGsP7xrCZA96T3j/R/m+qH003ZPSGUl8fHWl1b6
 7t8P3EKA==;
Received: from 236.51-175-223.customer.lyse.net ([51.175.223.236]:54530
 helo=[192.168.1.161]) by smtp.domeneshop.no with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <harald@skogtun.org>) id 1pGJnd-00E1rG-Bc;
 Fri, 13 Jan 2023 14:08:49 +0100
Message-ID: <0661e73f-9420-9a0a-ef46-15b54a3b5357@skogtun.org>
Date: Fri, 13 Jan 2023 14:08:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Christoph Hellwig <hch@infradead.org>, Dave Kleikamp <shaggy@kernel.org>
References: <Y8DvK281ii6yPRcW@infradead.org>
From: Harald Arnesen <harald@skogtun.org>
In-Reply-To: <Y8DvK281ii6yPRcW@infradead.org>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christoph Hellwig [13/01/2023 06.42]: > Hi all, > > A while
 ago we've deprecated reiserfs and scheduled it for removal. > Looking into
 the hairy metapage code in JFS I wonder if we should do > the same. While
 JFS isn't anywhere as complic [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pGKSM-0005ir-VJ
X-Mailman-Approved-At: Fri, 13 Jan 2023 15:02:16 +0000
Subject: Re: [Jfs-discussion] Should we orphan JFS?
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
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Christoph Hellwig [13/01/2023 06.42]:

> Hi all,
> 
> A while ago we've deprecated reiserfs and scheduled it for removal.
> Looking into the hairy metapage code in JFS I wonder if we should do
> the same.  While JFS isn't anywhere as complicated as reiserfs, it's
> also way less used and never made it to be the default file system
> in any major distribution.  It's also looking pretty horrible in
> xfstests, and with all the ongoing folio work and hopeful eventual
> phaseout of buffer head based I/O path it's going to be a bit of a drag.
> (Which also can be said for many other file system, most of them being
> a bit simpler, though).

The Norwegian ISP/TV provider used to have IPTV-boxes which had JFS on 
the hard disk that was used to record TV programmes.

However, I don't think these boxes are used anymore.
-- 
Hilsen Harald


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
