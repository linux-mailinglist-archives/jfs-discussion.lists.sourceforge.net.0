Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFKQMu37p2mvnAAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 04 Mar 2026 10:31:25 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 380C71FD9C2
	for <lists+jfs-discussion@lfdr.de>; Wed, 04 Mar 2026 10:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y7lymTzGCdltQYmizoIzeQfLSicUNLsbVNLHxjcUFWM=; b=G3fYY6P96uXofuVTrPhOxUTFQJ
	7jAtsWubHek+/FkyO7YyT84ZVYckVv8uQbDjOgYCReqWfKUZ+Y2dqDHUvL30s6w9ZPMt1eRbZM3zG
	x8q8N5HObinPQHwRjqGVx/iI1GWo+I2zC103/GVnpGXAYT/cqCBdCRmpQhOEuISrzO0U=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vxiZ3-0000bJ-Ei;
	Wed, 04 Mar 2026 09:30:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david.laight.linux@gmail.com>) id 1vxiZ1-0000bC-CJ
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Mar 2026 09:30:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BUzQoESoh9/PqMSFbMpuw4Pmh5IPXiGP/qvOjxX4wwo=; b=EFRrGgDJ4okXalm9eTrbj7kbc3
 p/3Rpy7aQVWAmgZQrvuDCbmzPPBzcHL2Lx1mtTYcsT1JwiF5FhEB2rGIL374fG8USdmz2oEVHkylL
 UUcFEekLTgP6QZayfK0CewQCSRpeNNW2qTg+mI9n6jeEZZGVLkkXwWAYAfUzl9baP84o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BUzQoESoh9/PqMSFbMpuw4Pmh5IPXiGP/qvOjxX4wwo=; b=jEP9HACvsEwoGgQmQAYNp8g1tm
 VOZLh62Oxos9sMd1sRg9lRe8H+BBeMZsafJTJepdULn04iWBPTynROJe14itH+QZWAEH3UeIosWQZ
 hxXoEudKB/EutTeoBLez+U1IHu0qfWNWvQ/t1Z9MpP+vtZKECe2FyNLPkpTRQFVyl7jQ=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxiZ1-0007eO-08 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Mar 2026 09:30:43 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-48371119eacso80386705e9.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 04 Mar 2026 01:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772616636; x=1773221436; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BUzQoESoh9/PqMSFbMpuw4Pmh5IPXiGP/qvOjxX4wwo=;
 b=VAG2/OFjl2kHQw/xVwitdIOXKJvHGLOMIp9G5vUhpxYfvnnklNApZshY6wwcqPFQDT
 80mmpcXyFWGQFEkXxKNPCLnLrjSqrXJkgq3h2XVGF9Ra0pzI7FtmR78HIGmSc/MhfHlE
 OQZs2hFtMO1YwUU32qGqC5e1k7kwdAcySYgc7Sfl7jPcPKtCEJ6tLjcdRTSL6rrY6oi5
 dZRfy+2p8Rs6krdG7JIQvD+KoLRLEE/EZbjIVP6wvWbCHDw+G6weH02C0hUNd6L0r1wO
 +bcnSyK8t08xN/vHh4LV0wowHKNOfz/VyQoe+OMfVKw0ZjxXifLqFpK+R0Cb94cAw6Yt
 8Xeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772616636; x=1773221436;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=BUzQoESoh9/PqMSFbMpuw4Pmh5IPXiGP/qvOjxX4wwo=;
 b=dxOA4PgKFi+jKqlhlSB6l7LmzFx3Mci9V53DTVOCLjqNymhqReTAaEu9uAw6IE8E9L
 ZOn0WFTVCRdOKF6WREeZtlGaJsHGYbw7QrtXMFwhJQA0IswEyiUHkBIVtzpqeqHSLlxT
 Uayh1RvebSqdW5eJU73uVyv8XDQ5ExnGh7g0kDBPdaB2ZI1KE4ssg4eHOedA08KNCo9e
 b093UcX0wzIXLA9be3ra61EKCJCVwWvXmxW+tvjDrOTTXtUigomIYE8CAFXGIvlPlvKS
 35Gw0HLBqFdphPBJWkO4CH0Ekb02zSByYW6oYVUsM5tPkiKod2gTaLCxLjbs727Q+x60
 1KsA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWFGWg5ZuRCc85rMqo1mXKWfwB81yGSQFlEV2QRvSO4SVHLcvpNio7Wk/oExo/SPxmmZffSSzR1AR2T9kPTFQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxH8tRYyoZp7lB1UJTCSxsodBF1DUVRnYozIVMXxxEbIPcIsH7m
 f9dXwsqrof11PUnrmzFSDpvLLS4dldRopjjKtUq6/zAGCOmYMjoEBztr
X-Gm-Gg: ATEYQzxWuXddBYPlBvBwS2vYIsqVgeSx4fGTEaLGBCN2QmjAJEAvlS1nNgSvg6XTNqx
 ow2uurVw4GSL863eAW9VnSzfLkKd/y9qkcu23Aq4m/rZrm3w1WLX8/mK192yPvwiMhiiy+IcvKF
 nb+D37XeWi7Vcsi5qVAdVCwZpJgft4nvWME5Ce1Qn+dV3DGJ3NDcc/gBsaw3bUuCjnJvtfpQh2A
 yfFujnjVnKG8L9sEQnZomfZSwbXpFc3A4miwprszjIR2DBpPQKrSqy5pKy8BFphpVWVScANp7jd
 emwfR/0f925ESX7II1I7ejAja4W+j5pGzGpHUFZu51V97kSNuH7A1RxZq6UEGAPhWYyd/k4kHnH
 FDMPDQm79IGoRQseSHK0aPGo8ANbrflSpojVIN77lSMhO6o+1o7+kDJ5II1QkkZwjG6p6tOd8Od
 I4yEEiDBxOqiugGAc7RCjhmG8FwUGkAnz8M+nBrcy3lcoYCak/UshiBPO3zkmSNTuq
X-Received: by 2002:a05:600c:8b53:b0:483:498f:7963 with SMTP id
 5b1f17b1804b1-4851989024emr19550785e9.26.1772616636117; 
 Wed, 04 Mar 2026 01:30:36 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4851884225asm38972555e9.6.2026.03.04.01.30.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2026 01:30:35 -0800 (PST)
Date: Wed, 4 Mar 2026 09:30:33 +0000
To: NeilBrown <neilb@ownmail.net>
Message-ID: <20260304092559.554ac9a9@pumpkin>
In-Reply-To: <177260561903.7472.14075475865748618717@noble.neil.brown.name>
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
 <1787281.1772535332@warthog.procyon.org.uk>
 <1c28e34c7167acf4e20c3e201476504135aa44e8.camel@kernel.org>
 <177260561903.7472.14075475865748618717@noble.neil.brown.name>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 04 Mar 2026 17:26:59 +1100 NeilBrown wrote: > On Tue,
 03 Mar 2026, Jeff Layton wrote: > > On Tue, 2026-03-03 at 10:55 +0000, David
 Howells wrote: > > > Jeff Layton wrote: > > > > > > > This version splits
 the change up to be more bisectable. [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [david.laight.linux(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
X-Headers-End: 1vxiZ1-0007eO-08
Subject: Re: [Jfs-discussion] [PATCH v2 000/110] vfs: change inode->i_ino
 from unsigned long to u64
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
From: David Laight via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: David Laight <david.laight.linux@gmail.com>
Cc: nvdimm@lists.linux.dev, jfs-discussion@lists.sourceforge.net,
 Jeff Layton <jlayton@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-unionfs@vger.kernel.org, linux-mm@kvack.org, linux-sctp@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-afs@lists.infradead.org,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-x25@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, codalist@coda.cs.cmu.edu,
 linux-ext4@vger.kernel.org, bpf@vger.kernel.org, devel@lists.orangefs.org,
 linux-trace-kernel@vger.kernel.org, ecryptfs@vger.kernel.org,
 selinux@vger.kernel.org, autofs@vger.kernel.org, apparmor@lists.ubuntu.com,
 linux-media@vger.kernel.org, linux-can@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, ocfs2-devel@lists.linux.dev,
 linux-fscrypt@vger.kernel.org, linux-hams@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-xfs@vger.kernel.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 v9fs@lists.linux.dev, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-perf-users@vger.kernel.org, audit@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, linux-integrity@vger.kernel.org, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 380C71FD9C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neilb@ownmail.net,m:nvdimm@lists.linux.dev,m:jfs-discussion@lists.sourceforge.net,m:jlayton@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-unionfs@vger.kernel.org,m:linux-mm@kvack.org,m:linux-sctp@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-afs@lists.infradead.org,m:linux-cifs@vger.kernel.org,m:linux-nilfs@vger.kernel.org,m:linux-x25@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:codalist@coda.cs.cmu.edu,m:linux-ext4@vger.kernel.org,m:bpf@vger.kernel.org,m:devel@lists.orangefs.org,m:linux-trace-kernel@vger.kernel.org,m:ecryptfs@vger.kernel.org,m:selinux@vger.kernel.org,m:autofs@vger.kernel.org,m:apparmor@lists.ubuntu.com,m:linux-media@vger.kernel.org,m:linux-can@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ocfs2-devel@lists.linux.dev,m:linux-fscrypt@vger.kernel.org,m:linux-hams@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:linux-xfs@vger.kernel.org,m:fsverity@lists.linux.dev,m:linux-nfs@vger.kern
 el.org,m:netdev@vger.kernel.org,m:v9fs@lists.linux.dev,m:samba-technical@lists.samba.org,m:linux-kernel@vger.kernel.org,m:linux-f2fs-devel@lists.sourceforge.net,m:linux-perf-users@vger.kernel.org,m:audit@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:netfs@lists.linux.dev,m:linux-integrity@vger.kernel.org,m:ntfs3@lists.linux.dev,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FREEMAIL_TO(0.00)[ownmail.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[46];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[david.laight.linux@gmail.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ownmail.net:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

On Wed, 04 Mar 2026 17:26:59 +1100
NeilBrown <neilb@ownmail.net> wrote:

> On Tue, 03 Mar 2026, Jeff Layton wrote:
> > On Tue, 2026-03-03 at 10:55 +0000, David Howells wrote:  
> > > Jeff Layton <jlayton@kernel.org> wrote:
> > >   
> > > > This version splits the change up to be more bisectable. It first adds a
> > > > new kino_t typedef and a new "PRIino" macro to hold the width specifier
> > > > for format strings. The conversion is done, and then everything is
> > > > changed to remove the new macro and typedef.  
> > > 
> > > Why remove the typedef?  It might be better to keep it.
> > >   
> > 
> > Why? After this change, internel kernel inodes will be u64's -- full
> > stop. I don't see what the macro or typedef will buy us at that point.  
> 
> Implicit documentation?
> ktime_t is (now) always s64, but we still keep the typedef;
> 
> It would be cool if we could teach vsprintf to understand some new
> specifier to mean "kinode_t" or "ktime_t" etc.  But that would trigger
> gcc warnings.

A more interesting one would be something that made gcc re-write the
format with the correct 'length modifier' for the parameter.

That would save a lot of effort!

	David

> 
> NeilBrown
> 



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
