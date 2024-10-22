Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 216159AA1F5
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Oct 2024 14:14:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t3DmA-0006To-J2;
	Tue, 22 Oct 2024 12:14:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1t3Dm8-0006Ti-Rz
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Oct 2024 12:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mi3TrYlXX9OD5PlpFmztGdMGUKvouQ7YS5GcWdqkoJo=; b=HEmGyvWIfBFLIdMN5g7naD2W7R
 Rws1hzVm/RUJ1QUxtoU7dl9Z11uFfVgugR5VXrLwTFRmnRXENi6l0040opF/F3OMSrna51FR6ddYg
 n4fSBVbOnOtYS0sKsiA+NlViBVyIi0gjyDxE12NlSB8PCp79KlbsEEdEHaPzT88uRvpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mi3TrYlXX9OD5PlpFmztGdMGUKvouQ7YS5GcWdqkoJo=; b=EKTwNKJ2O/RfWh5utLjZEoLwgJ
 C3BJNu0MVyOVNEf2msnfHQezAYc9vC70AL8WXn7al5ZniPIsN+ipOmQsP6VrRkGhXjEJfxGr77HAJ
 sOm1VZvcM8J7iu82fclwutZNuYnTYxnFTevEZqYIDxIv3cNXfYXJVtU1Tskb9pIOGZzk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t3Dm6-0001vx-VE for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Oct 2024 12:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mi3TrYlXX9OD5PlpFmztGdMGUKvouQ7YS5GcWdqkoJo=; b=oBMsbHcYqbNGufQtBZXiU3gBmd
 48VMgriW2+czbR44uj0CT8fbbZIwsRPt9ARXjZYpWZYrPEHhNXJMOEnEqlhJq6vGzX1OAdgSR/q2O
 1xOaLo2ng+y/TXqk+HZuzasd0lViaSX2v+Qi/lDc3iGU5kx1OTJY0DvBufhGHjPRF8p7OzXmXgEpI
 taWbvXJnBeZBX9uoDN7DLbcYPmTfXkFMgHeLsLIBLBaBaGvkGsKcrM9up7AnA/ga7mUTPgwrnfjX+
 O6gMXxtNYE88A13Bx4YovTDuQgCRpauoPRcNFWA8KIcX1bYQ7xw/8BXR9k+iTrZSmEj5meVkEtVL5
 /+1blGKA==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1t3Dlv-00000001btc-3qWw; Tue, 22 Oct 2024 12:13:59 +0000
Date: Tue, 22 Oct 2024 13:13:59 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Edward Adam Davis <eadavis@qq.com>
Message-ID: <ZxeXBwLCsIwNYmlP@casper.infradead.org>
References: <CAHOo4gKf2mjPX8oAxCBUc74=+OToMdu6pe6iALGCOmXjToFaKw@mail.gmail.com>
 <tencent_7C86DFB364837BA979A3B0A44CF768577205@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_7C86DFB364837BA979A3B0A44CF768577205@qq.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 15, 2024 at 12:50:05PM +0800, Edward Adam Davis
 wrote: > There is a race condition when accessing ipimap and ipbmap. > >
 CPU1 CPU2 > ==== ==== > jfs_umount > sbi->ipimap = NULL; lmLogSync 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1t3Dm6-0001vx-VE
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix null-ptr-deref in
 write_special_inodes
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
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, lizhi.xu@windriver.com, guohui.study@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Oct 15, 2024 at 12:50:05PM +0800, Edward Adam Davis wrote:
> There is a race condition when accessing ipimap and ipbmap.
> 
>         CPU1                              CPU2
> 	====                              ====
> 	jfs_umount
> 	sbi->ipimap = NULL;               lmLogSync

how are we unmounting the filesystem while still writing to it?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
