Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IINLJdFqmnxOQEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 06 Mar 2026 04:10:15 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0090821AE73
	for <lists+jfs-discussion@lfdr.de>; Fri, 06 Mar 2026 04:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=avlCncKcA8ZddoCBSiv5xxE393AAxS8hlYi8FxcTwCg=; b=Y97rfcbMCvkjz5d/wQbgGeZ0jx
	GAfjwFA1UZeKZIl7Bl0dKDvbccrJ1Kv6ky0vrdestK46j9nCuKddJMQRLabtlAMQQkeorsWvmI+0W
	tQkCYD+7zaGjQzgwmmyUXcWLh67ovV9v8Kpal3Du64EfslQU6Rrmo/RAv9ME2oS6SQqo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vyLZE-00026y-T4;
	Fri, 06 Mar 2026 03:09:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1vyLZD-00026p-4R
 for jfs-discussion@lists.sourceforge.net;
 Fri, 06 Mar 2026 03:09:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a2wyFmqtgQuSSxu/y1lHXpYQVnaUEjD/9HUkzSu97q4=; b=WrnXAXhP5MJYsFWcaQJYZ4J+u/
 HiMjM5x8ZdnoUu4hmIIXhIwKIzqDLWBZSiSp7qb+4qhyHKHt2W9aB/YV+aMLrvRdc504UCWpCP399
 DTVxfDvUEMo+CPwTuqrOz9zN39C201b7S0AY2rrbmzUsEHgKFoLklbE+51RnHtktsnd8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a2wyFmqtgQuSSxu/y1lHXpYQVnaUEjD/9HUkzSu97q4=; b=OMfdB/5oKRGGgDhGUPyn7CBsz3
 B7pin8OB+TNQOijlS/QtgIRT+b4iY3DRS38vl3ixuuDGuodeH7jDXblSVHDr6MBhMTHsroEB44WQl
 HjESOmQD9g32qlXoMjeRc3EvRoaLvB5iqS24KnTNevjTSRzc7m3k3c4fpOGft9rcvygo=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vyLZC-0007jJ-EL for jfs-discussion@lists.sourceforge.net;
 Fri, 06 Mar 2026 03:09:31 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 98e67ed59e1d1-35994d84c6dso2071699a91.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 05 Mar 2026 19:09:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772766565; cv=none;
 d=google.com; s=arc-20240605;
 b=OH+Tj/YKfVXzrSppVC/OSYXRCYh2pmKsnPFGlRvQ38iO52PtZiAR9CackMQOJlTgDK
 NYaCMsCzANSfJSkoCgaRmNQ8ulsj01W6A5i22wdQGaRtslNB2bo6RIGi2kZIOpVYItIb
 PVf1WqwBQmBLQ0XkTPVKaT6rk0UY1lFToEX7EGKE46VnM6ZF+424FaRlWJibmC+PnCRi
 xueJM/C5fTyv2WAq5WIA1EgUy9jt7DzI5eZ9LoyUNlbcgw5RlhfHlG4NFRvSabzydtW9
 Ho/+3Edmqim+FhiTj2/DFe4QngSQ8MNMxqdw6Mk/uSM2bjm8/hzp7gu035h5ttoYuqER
 OIVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=a2wyFmqtgQuSSxu/y1lHXpYQVnaUEjD/9HUkzSu97q4=;
 fh=NjPTSen/ZCZVQGf7v5jyAtr3oeK8lgE7tWCxnqPMwps=;
 b=joByBFRxTvmjES/S+KQc9nDd80JT51hM2EgAqjG9ecAjKc5u+oKVhVm4xKxXHXri8V
 JQUH3jB1f1OG+F4nk4kERC561KSdF9ynJcip65dS44UGfbzzP/7D1DzY0BPSusC3mfb3
 +n3XTdlIqGqntzXlX14I8055A0jeYwI6484TZ/Q48nn1uQI7TbO+UAhMDD0S6y+1p8Ry
 1LnsY1LVxhaoaCagegdIAmli18nE+dRLbaWN1O2KeNLUOZMVYStGtWrDCpE1Xoa8w10r
 PK00VZIDlIuJnpHljHDXIDpQnGs5wHSZWVM6NJ63rOU7Ud7eVkiWNh92wnPtG2RXa0gK
 f2Zg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1772766565; x=1773371365;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a2wyFmqtgQuSSxu/y1lHXpYQVnaUEjD/9HUkzSu97q4=;
 b=Bg7/7DmewcokSnPZhle4UwA7zx0Wgjrvjtoqv+3WLVMWx4c4KJhsmrWQHtYX6AU2ce
 wmkbtsR+oPZFV8q22s1UCKNjzWGTX7nSw5L+VMcYiPefA5VgEypahwTmPoe5FY638SRa
 q+fv+NsyGrbOpjZe01Cyb6YkrJVQTgjj+3ft/tSBz+6xPNRZACwtnUFYP5YkmcMJ1fif
 zt1W6eizafzGRXzmH3MMZIpdxLYjftps8bdyptpVLA3C9KqWB1oqyQv4byavprTfEEE7
 xLAsO3X/SvsnKogzjtipEJAjj91OzyPa8jB5oWnKajxikzvhzpjnqdCxi3+ifiX/V7dk
 lGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772766565; x=1773371365;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=a2wyFmqtgQuSSxu/y1lHXpYQVnaUEjD/9HUkzSu97q4=;
 b=SNeTrGI79W6ObBByXg9bYma4fugWno69yQ3I3HdjxbF/qLDiUzcR3HoQISaqEKv7CW
 Ti6SGdkQ7RbyPL0nbQBs2UpVDtKCXkGdi292L8YtnAx9Vhmc2cRoTXdrZ/nRpyKzDmwv
 8PTiVUSlTNK2IaSHUoeggoa/9i3wEvKXzpMWfwMl1IrCzKRwwMc3lvvDXuFESDI+5i/T
 zZJfW4dREUSA8gBNerz79iuGKO4NSZxxDbIGl/AEVugRn6T70xV80ttoAFSNyoQhWq6x
 6NvaPG/OfUqiX/AM+eDq6FpXsMoqM+cPLoV0WEFKgCqmEJO1I9T4PGpWNSn6D7i435P7
 1KNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3pn/mMmoGEqzT2dI8qeuUWRK1xmkK2L+D1VbJtFNVO5AI8y0FryWjosv9q8jGjDsQ4Y7fdBI5qsRUWpWQeg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yzgz6wxi2+dsPVmNSABwy3wxTajpSMc8/GXeaH4cYtOQEBchSa3
 ESFCO17m0lPkkzTMw3YSuRex0xmcZSqyZfBtp+B6CVEMJS7S1PXvie4Gn3pqWl6Kn01raYFiVw1
 zkDySOvMfYzGRk41WJDcJAl0CzVUXvQU+WwipVKUh
X-Gm-Gg: ATEYQzy8M0jwcjoNN3Vj0TblzT59r5X7xO7ALa8ClnQ5utmX7AhwtfLVL081R2XS7CJ
 jo964DrpKyoT+fpMJJu5U9kUjt0wsUfLeoQDm5Bp5uy8gTDxJXU6KR7oKtjiqisBSawr4NpjNBL
 qFATl/JhSzCCJlUkaXC5LDuNHo5sq2qUttMT4InKr+mViwZf4TUAw1CNLDR5tqliinqNTyd3kPE
 UH99p2C/0CH8vf7qWJjQ5MzbAcVWEK+NDaHeZLPjLnrnrVge2cGEQ2YYXZas4joebFzp09ZGNt+
 Mel6BzE=
X-Received: by 2002:a17:90b:390a:b0:34c:35ce:3c5f with SMTP id
 98e67ed59e1d1-359be28da81mr585228a91.5.1772766564424; Thu, 05 Mar 2026
 19:09:24 -0800 (PST)
MIME-Version: 1.0
References: <20260304-iino-u64-v3-0-2257ad83d372@kernel.org>
 <20260304-iino-u64-v3-2-2257ad83d372@kernel.org>
In-Reply-To: <20260304-iino-u64-v3-2-2257ad83d372@kernel.org>
Date: Thu, 5 Mar 2026 22:09:12 -0500
X-Gm-Features: AaiRm51A9fGFpauPslQfX6LBJuSyutri4HG-shh7wAOHtGm4QDzvXC5jtThE_pI
Message-ID: <CAHC9VhQix8opxrX--w-pw5vEAiLaYX=kPhnm4x+dEFEwHiVnfQ@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 4,
 2026 at 10:33 AM Jeff Layton <jlayton@kernel.org>
 wrote: > > inode->i_ino is being widened from unsigned long to u64. The audit
 > subsystem uses unsigned long ino in struct fields, func [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vyLZC-0007jJ-EL
Subject: Re: [Jfs-discussion] [PATCH v3 02/12] audit: widen ino fields to u64
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
From: Paul Moore via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Paul Moore <paul@paul-moore.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 Paulo Alcantara <pc@manguebit.org>, "Darrick J. Wong" <djwong@kernel.org>,
 Anders Larsen <al@alarsen.net>, dri-devel@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, linux-hams@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Fan Wu <wufan@kernel.org>,
 Xin Long <lucien.xin@gmail.com>, ceph-devel@vger.kernel.org,
 James Morris <jmorris@namei.org>, Tyler Hicks <code@tyhicks.com>,
 Christoph Hellwig <hch@infradead.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Martin Schiller <ms@dev.tdt.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>,
 Willem de Bruijn <willemb@google.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-fscrypt@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 David Hildenbrand <david@kernel.org>, Eric Van Hensbergen <ericvh@kernel.org>,
 Zhihao Cheng <chengzhihao1@huawei.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Christian Brauner <brauner@kernel.org>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Paris <eparis@redhat.com>, linux-perf-users@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Jan Kara <jack@suse.com>,
 Alex Deucher <alexander.deucher@amd.com>, linux-media@vger.kernel.org,
 Trond Myklebust <trondmy@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 linux-cifs@vger.kernel.org, Kuniyuki Iwashima <kuniyu@google.com>,
 linux-nilfs@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 codalist@coda.cs.cmu.edu, Remi Denis-Courmont <courmisch@gmail.com>,
 linux-trace-kernel@vger.kernel.org, Olga Kornievskaia <okorniev@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Yangtao Li <frank.li@vivo.com>, selinux@vger.kernel.org, v9fs@lists.linux.dev,
 linux-can@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Casey Schaufler <casey@schaufler-ca.com>, netfs@lists.linux.dev,
 Jaegeuk Kim <jaegeuk@kernel.org>, fsverity@lists.linux.dev,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Nicolas Pitre <nico@fluxnic.net>,
 Muchun Song <muchun.song@linux.dev>, Roberto Sassu <roberto.sassu@huawei.com>,
 "David S. Miller" <davem@davemloft.net>, Anna Schumaker <anna@kernel.org>,
 linux-integrity@vger.kernel.org,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Alex Markuze <amarkuze@redhat.com>, Martin Brandenburg <martin@omnibond.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 ocfs2-devel@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 linux-mtd@lists.infradead.org, Marc Dionne <marc.dionne@auristor.com>,
 Neal Cardwell <ncardwell@google.com>, linux-afs@lists.infradead.org,
 Ian Kent <raven@themaw.net>, Naohiro Aota <naohiro.aota@wdc.com>,
 Eric Biggers <ebiggers@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Miklos Szeredi <miklos@szeredi.hu>, amd-gfx@lists.freedesktop.org,
 coda@cs.cmu.edu, Stanislav Fomichev <sdf@fomichev.me>,
 NeilBrown <neil@brown.name>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, jfs-discussion@lists.sourceforge.net,
 "Serge E. Hallyn" <serge@hallyn.com>, Amir Goldstein <amir73il@gmail.com>,
 James Clark <james.clark@linaro.org>, autofs@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Damien Le Moal <dlemoal@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, linux-mm@kvack.org,
 samba-technical@lists.samba.org, Ondrej Mosnacek <omosnace@redhat.com>,
 Steve French <sfrench@samba.org>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, ntfs3@lists.linux.dev,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ian Rogers <irogers@google.com>, Alexander Aring <alex.aring@gmail.com>,
 Jan Kara <jack@suse.cz>, Peter Zijlstra <peterz@infradead.org>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, ecryptfs@vger.kernel.org,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 linux-f2fs-devel@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Eric Snowberg <eric.snowberg@oracle.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-x25@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Joerg Reuter <jreuter@yaina.de>, Simon Horman <horms@kernel.org>,
 Chao Yu <chao@kernel.org>, apparmor@lists.ubuntu.com,
 Tom Talpey <tom@talpey.com>, Bharath SM <bharathsm@microsoft.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Namhyung Kim <namhyung@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 John Johansen <john.johansen@canonical.com>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Oliver Hartkopp <socketcan@hartkopp.net>, David Ahern <dsahern@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, audit@vger.kernel.org,
 linux-security-module@vger.kernel.org, Johannes Thumshirn <jth@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 0090821AE73
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[ionkov.net,lists.linux.dev,manguebit.org,kernel.org,alarsen.net,lists.freedesktop.org,vger.kernel.org,linaro.org,omnibond.com,gmail.com,namei.org,tyhicks.com,infradead.org,lists.orangefs.org,microsoft.com,dev.tdt.de,cs.cmu.edu,google.com,zeniv.linux.org.uk,physik.fu-berlin.de,huawei.com,intel.com,redhat.com,oracle.com,suse.com,amd.com,arm.com,linux.ibm.com,ffwll.ch,coda.cs.cmu.edu,vivo.com,lists.linaro.org,schaufler-ca.com,mit.edu,fluxnic.net,linux.dev,davemloft.net,linux.intel.com,lists.infradead.org,auristor.com,themaw.net,wdc.com,iogearbox.net,szeredi.hu,fomichev.me,brown.name,lists.sourceforge.net,hallyn.com,goodmis.org,efficios.com,suse.de,paragon-software.com,kvack.org,lists.samba.org,samba.org,suse.cz,codewreck.org,crudebyte.com,linux.alibaba.com,dilger.ca,artax.karlin.mff.cuni.cz,secunet.com,gondor.apana.org.au,nod.at,fasheh.com,holtmann.org,yaina.de,lists.ubuntu.com,talpey.com,pengutronix.de,canonical.com,hartkopp.net,evilplan.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jlayton@kernel.org,m:lucho@ionkov.net,m:nvdimm@lists.linux.dev,m:pc@manguebit.org,m:djwong@kernel.org,m:al@alarsen.net,m:dri-devel@lists.freedesktop.org,m:linux-sctp@vger.kernel.org,m:linux-hams@vger.kernel.org,m:sumit.semwal@linaro.org,m:hubcap@omnibond.com,m:linux-xfs@vger.kernel.org,m:wufan@kernel.org,m:lucien.xin@gmail.com,m:ceph-devel@vger.kernel.org,m:jmorris@namei.org,m:code@tyhicks.com,m:hch@infradead.org,m:devel@lists.orangefs.org,m:sprasad@microsoft.com,m:ms@dev.tdt.de,m:hawk@kernel.org,m:jaharkes@cs.cmu.edu,m:willemb@google.com,m:acme@kernel.org,m:linux-fscrypt@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:ronniesahlberg@gmail.com,m:glaubitz@physik.fu-berlin.de,m:david@kernel.org,m:ericvh@kernel.org,m:chengzhihao1@huawei.com,m:magnus.karlsson@intel.com,m:brauner@kernel.org,m:dmitry.kasatkin@gmail.com,m:stephen.smalley.work@gmail.com,m:linux-kernel@vger.kernel.org,m:eparis@redhat.com,m:linux-perf-users@vger.kernel.org,m:chuck.lever@oracle.com,m:mhir
 amat@kernel.org,m:jolsa@kernel.org,m:jack@suse.com,m:alexander.deucher@amd.com,m:linux-media@vger.kernel.org,m:trondmy@kernel.org,m:mark.rutland@arm.com,m:shaggy@kernel.org,m:zohar@linux.ibm.com,m:oleg@redhat.com,m:edumazet@google.com,m:johan.hedberg@gmail.com,m:simona@ffwll.ch,m:linux-cifs@vger.kernel.org,m:kuniyu@google.com,m:linux-nilfs@vger.kernel.org,m:john.fastabend@gmail.com,m:codalist@coda.cs.cmu.edu,m:courmisch@gmail.com,m:linux-trace-kernel@vger.kernel.org,m:okorniev@redhat.com,m:maciej.fijalkowski@intel.com,m:frank.li@vivo.com,m:selinux@vger.kernel.org,m:v9fs@lists.linux.dev,m:linux-can@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:casey@schaufler-ca.com,m:netfs@lists.linux.dev,m:jaegeuk@kernel.org,m:fsverity@lists.linux.dev,m:tytso@mit.edu,m:nico@fluxnic.net,m:muchun.song@linux.dev,m:roberto.sassu@huawei.com,m:davem@davemloft.net,m:anna@kernel.org,m:linux-integrity@vger.kernel.org,m:marcelo.leitner@gmail.com,m:luiz.dentz@gmail.com,m:amarkuze@redhat.com,m:martin@omni
 bond.com,m:alexander.shishkin@linux.intel.com,m:ocfs2-devel@lists.linux.dev,m:ast@kernel.org,m:linux-mtd@lists.infradead.org,m:marc.dionne@auristor.com,m:ncardwell@google.com,m:linux-afs@lists.infradead.org,m:raven@themaw.net,m:naohiro.aota@wdc.com,m:ebiggers@kernel.org,m:daniel@iogearbox.net,m:miklos@szeredi.hu,m:amd-gfx@lists.freedesktop.org,m:coda@cs.cmu.edu,m:sdf@fomichev.me,m:neil@brown.name,m:idryomov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,paul-moore.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[169];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,paul-moore.com:s=google];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[paul@paul-moore.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,paul-moore.com:replyto,paul-moore.com:email,paul-moore.com:url]
X-Rspamd-Action: no action

T24gV2VkLCBNYXIgNCwgMjAyNiBhdCAxMDozM+KAr0FNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gaW5vZGUtPmlfaW5vIGlzIGJlaW5nIHdpZGVuZWQgZnJvbSB1
bnNpZ25lZCBsb25nIHRvIHU2NC4gVGhlIGF1ZGl0Cj4gc3Vic3lzdGVtIHVzZXMgdW5zaWduZWQg
bG9uZyBpbm8gaW4gc3RydWN0IGZpZWxkcywgZnVuY3Rpb24gcGFyYW1ldGVycywKPiBhbmQgbG9j
YWwgdmFyaWFibGVzIHRoYXQgc3RvcmUgaW5vZGUgbnVtYmVycyBmcm9tIGFyYml0cmFyeSBmaWxl
c3lzdGVtcy4KPiBPbiAzMi1iaXQgcGxhdGZvcm1zIHRoaXMgdHJ1bmNhdGVzIGlub2RlIG51bWJl
cnMgdGhhdCBleGNlZWQgMzIgYml0cywKPiB3aGljaCB3aWxsIGNhdXNlIGluY29ycmVjdCBhdWRp
dCBsb2cgZW50cmllcyBhbmQgYnJva2VuIHdhdGNoL21hcmsKPiBjb21wYXJpc29ucy4KPgo+IFdp
ZGVuIGFsbCBhdWRpdCBpbm8gZmllbGRzLCBwYXJhbWV0ZXJzLCBhbmQgbG9jYWxzIHRvIHU2NCwg
YW5kIHVwZGF0ZQo+IHRoZSBpbm9kZSBmb3JtYXQgc3RyaW5nIGZyb20gJWx1IHRvICVsbHUgdG8g
bWF0Y2guCj4KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3Jn
Pgo+IC0tLQo+ICBpbmNsdWRlL2xpbnV4L2F1ZGl0LmggICB8ICAyICstCj4gIGtlcm5lbC9hdWRp
dC5oICAgICAgICAgIHwgMTMgKysrKysrLS0tLS0tLQo+ICBrZXJuZWwvYXVkaXRfZnNub3RpZnku
YyB8ICA0ICsrLS0KPiAga2VybmVsL2F1ZGl0X3dhdGNoLmMgICAgfCAxMiArKysrKystLS0tLS0K
PiAga2VybmVsL2F1ZGl0c2MuYyAgICAgICAgfCAgNCArKy0tCj4gIDUgZmlsZXMgY2hhbmdlZCwg
MTcgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpBY2tlZC1ieTogUGF1bCBNb29yZSA8
cGF1bEBwYXVsLW1vb3JlLmNvbT4KCi0tIApwYXVsLW1vb3JlLmNvbQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
