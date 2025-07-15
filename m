Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6FFB05AFC
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Jul 2025 15:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GkCi+swCxfzcLARRDML8rG4BZqLMZx270DDMRHeYOaA=; b=LRI7zfXyagkRp6LKWu2Wh5HLsD
	1mT5b+6ydWki3EJ6WmGIXfj0a7VQmKWRguejrYr0HXw7egDvyrc7SprR3WULxBTk/2e3OBolUIMBJ
	K602XwaOQ/AjkPrBA8XRavn6v2OR9qSqzXtvyRD0V3eQyWNaKiZAt2tMu+w0y5Wylt2Q=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ubfUO-0001SU-2D;
	Tue, 15 Jul 2025 13:14:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kernel@pankajraghav.com>) id 1ubdL0-00067R-H0
 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Jul 2025 10:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xkTXIjd3OsRf0eTlKAZhhSr2I1Js8WnKPTLus2lYh/0=; b=PFqKQ2xxNAN5UgD+4d4A4IVUCw
 lL5GaBjNkO+YYfW2+O1CgQPJzY3bY4NCV3q9L5MEuU79vclygKXOMcDfLCSPDS4wBdBuds4j5fb8L
 0J4FlZPenbg6QZ0UVHz7SMGhB+7OcuwGjj+qGzdFciNHYyGvJnaxA1bqupF90VoGTWNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xkTXIjd3OsRf0eTlKAZhhSr2I1Js8WnKPTLus2lYh/0=; b=HiGiNNjYIq9lT+5DKkhWMcrszC
 +bu1L3g9n8vpUrXV20LIePnp29d8ZgEryMx+ElHrWoE5ess9CBseegbbSftVrxltwfRYFbGyb5qBQ
 25Hvs5OBViZhGjPR2DWahTUCBSkH5WocgBnA9Y40Uxb/RD98Rz9sXaiIgs6Y+y65oaCQ=;
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ubdL0-0007rc-L8 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Jul 2025 10:56:43 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:b231:465::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4bhFxK0fpGz9tfC;
 Tue, 15 Jul 2025 12:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pankajraghav.com;
 s=MBO0001; t=1752575829;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xkTXIjd3OsRf0eTlKAZhhSr2I1Js8WnKPTLus2lYh/0=;
 b=fMP/2/5aRy89wVDDtWPiLpWM6+NT4rbhDFrN85k+PQgKFGsy4ZXffGVAec+4b5FgwGyCwM
 oD46fz3Q2+c4FsgaI8YglSL/grUQh+xJkgXj15S22kPzJzDcb7BG93/TyRdSw5hzORxjXq
 wgR65uD+K5QrgY35TxnvacbTa7rsWjKxQZM12m23t4J6iXFr6K6ZvnRoHV8uREBohXqHKX
 Z3WCtVRBTkZx1ECuRCWFcrKAZeJJz+6uW6dyxXf+q9d0vTG85UxqyZhzp168fnVXkraT9o
 Pownt3fQ8fLxYQAob3n4GAVHSVWmg07H4xsJ1mNlB7NW6tqxEbRJQukaMYqRpQ==
Authentication-Results: outgoing_mbo_mout; dkim=none;
 spf=pass (outgoing_mbo_mout: domain of kernel@pankajraghav.com designates
 2001:67c:2050:b231:465::2 as permitted sender)
 smtp.mailfrom=kernel@pankajraghav.com
Date: Tue, 15 Jul 2025 12:36:59 +0200
To: Jan Kara <jack@suse.cz>
Message-ID: <f634msrtbc75cspm3pysavmxc5gfzlut56bee7qtc72ypmd4ap@p7tmmjisdc72>
References: <686a8143.a00a0220.c7b3.005b.GAE@google.com>
 <68710315.a00a0220.26a83e.004a.GAE@google.com>
 <gbzywhurs75yyg2uckcbi7qp7g4cx6tybridb4spts43jxj6gw@66ab5zymisgc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gbzywhurs75yyg2uckcbi7qp7g4cx6tybridb4spts43jxj6gw@66ab5zymisgc>
X-Rspamd-Queue-Id: 4bhFxK0fpGz9tfC
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > bisection log:
 https://syzkaller.appspot.com/x/bisect.txt?x=127d8d82580000
 > > start commit: 835244aba90d Add linux-next specific files for 20250709
 > > git tree: linux-next > > final oops: https: [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [80.241.56.171 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ubdL0-0007rc-L8
X-Mailman-Approved-At: Tue, 15 Jul 2025 13:14:30 +0000
Subject: Re: [Jfs-discussion] [syzbot] [ext4?] WARNING in bdev_getblk
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
From: "Pankaj Raghav \(Samsung\) via Jfs-discussion"
 <jfs-discussion@lists.sourceforge.net>
Reply-To: "Pankaj Raghav \(Samsung\)" <kernel@pankajraghav.com>
Cc: p.raghav@samsung.com, shaggy@kernel.org, brauner@kernel.org,
 linux-ext4@vger.kernel.org, tytso@mit.edu, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 libaokun1@huawei.com, sj1557.seo@samsung.com, linux-fsdevel@vger.kernel.org,
 adilger.kernel@dilger.ca, anna.luese@v-bien.de,
 syzbot <syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com>,
 linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=127d8d82580000
> > start commit:   835244aba90d Add linux-next specific files for 20250709
> > git tree:       linux-next
> > final oops:     https://syzkaller.appspot.com/x/report.txt?x=117d8d82580000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=167d8d82580000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=8396fd456733c122
> > dashboard link: https://syzkaller.appspot.com/bug?extid=01ef7a8da81a975e1ccd
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=115c40f0580000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11856a8c580000
> > 
> > Reported-by: syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com
> > Fixes: 77eb64439ad5 ("fs/buffer: remove the min and max limit checks in __getblk_slow()")
> > 
> > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> 
> Ah, I see what's going on here. The reproducer mounts ext4 filesystem and
> sets block size on loop0 loop device to 32k using LOOP_SET_BLOCK_SIZE. Now
> because there are multiple reproducer running using various loop devices it
> can happen that we're setting blocksize during mount which obviously
> confuses the filesystem (and makes sb mismatch the bdev block size). It is
> really not a good idea to allow setting block size (or capacity for that
> matter) underneath an exclusive opener. The ioctl should have required
> exclusive open from the start but now it's too late to change that so we
> need to perform a similar dance with bd_prepare_to_claim() as in
> loop_configure() to grab temporary exclusive access... Sigh.
> 
> Anyway, the commit 77eb64439ad5 is just a victim that switched KERN_ERR
> messages in the log to WARN_ON so syzbot started to notice this breakage.

I was also thinking the change we did from KERN_ERR to WARN_ON was catching
a different bug.

Thanks for taking a look and fixing the issue Jan.

-- 
Pankaj Raghav


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
