Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOBcJnmroWm1vQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Feb 2026 15:34:33 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C220D1B90A5
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Feb 2026 15:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PjBY0PSsMcUu4PLmSieDYTJ2rc+4/t+jqRgPhIlQCRc=; b=GdSWyKHmOQ7KAojfuYkZ0QQgID
	hon0OC0sxwzVMLL5spraOtFU7pFjNigrj2xs/Cn7Mn+A4RzT2Gq33LeJiXvwY2KCA2zgP0bo9+4sh
	KYCY0Ry05wQiv1Xl9Of7wYY4wgs0MC0RjLmSH0pgEc1POdzJS5G7a6p+8vXH5pzsZ0Is=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvyug-000698-09;
	Fri, 27 Feb 2026 14:33:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1vvj6n-0002Lo-V0
 for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 21:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=; b=PgWsQeILZjHmXVIcyIGa37cfPO
 ShoyS67dRjSwH4yor3k2i6NJdwWPm/MJ6r9f2S/TOh9pOFI0OHNKifKlzeZs6+2gz43TG2Zb3wg7I
 DGkZ5e+kiOevifh/fVmmdfENzCYnkTc+wicJapgsejjQz01cuBMaXF5l/nnyt62NlaEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=; b=Syuu+fjr9Mf8E//jtkooXjBzce
 JbLsvqwLn+eRMMjomowTLPVJprPefqvR1myhfxiqwoT9EQ2FpXRj4vKPTyR66+QKNEAPqXV51jftf
 KyIzp2yQ7ph8F4FKxFEcotn1E1+kiTdFtB4NuSWWdqkqxmmaFCtTj6QO7BQinUTJsuUY=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vvj6n-0006eV-HD for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 21:41:21 +0000
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-8cb4136d865so160781985a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 26 Feb 2026 13:41:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772142070; cv=none;
 d=google.com; s=arc-20240605;
 b=VJd2WPpQSl+nx6mKyaJaVUuoFpQyP9NF7bEY2wrkp82Gy4riJGzFUnbTDIpQjX2wN2
 AeMBLhDheUgu5dzz1sNGBPfG5vEC4Dg/+5LQyZma40pUKWueauIKJ3xRls0AJDtOxOWN
 zPt41eKuMifR2aH5MYkrFlHadkehgKI8YYlnJSRNPjiWoRsbG7Wjn8CuSJh0l1tXLwx6
 c+CBeieag1M8OW3pSeQhSgogFXQH8GlN/qAsI1u4pBk3nqLIEKmkI3Hs+ZTv55RyvT3X
 uVoVZnvBvbRtyiQhMnwfqc3twd1to7n7n1je8vkLRDRAo0WXngjzBbsyNs7bOEnAcL97
 iQOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=;
 fh=Cmkf5VlJUjLu/liWCCnnNHJ7qlI0fMjhZt8UExR00+M=;
 b=TFCcH+rPYOVtC0nmP9kSAPkk4aXNWYil0AudDKWM3QLA7/mGEvU3wW2tM8mGCXvZMl
 H3WwzKYQDBPlnV5VfKqQTxB+v2ONFnRlSZ5S7YTllfIVcv2pA7ZSo+opH20N3E5t37MK
 CcRIU1y1DJxLOmHU4S9WqmflZuP2ezDtV45U/GDAU5IWNTPF7H29thypqYnzaOyjenif
 zKjHfFJ+cqzrjgL61Qy2Et+2tzJkRGmmuT/rbAIotDXM4rIh8UfP1E1Li16tC73Bghvx
 +JhQIQObphRQhA5nCMhAqfepadTjTCPWlXrDKNcRa/Dobig9cSb7h7UDqwGa1oMrSZ1w
 TgJg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1772142070; x=1772746870;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=;
 b=Bi/llMReK+DXYtiwtBnNjcITd9abticGdj7vJxSlwYiIci1laSM1yd5xvRbGUAud0g
 xubwFcncjZdNAsJuEYV+XIy6PqTZeS/UTIhDO3f3rMqwBErwjMXe8gqnRZuXIkSBNxw2
 wXb/hHlmNgPB68W7XKz49su3r/JrAjWDUGBD1T3m/PIyR9r9Z3hih09eievDnnkkKFuH
 gcwJbY/FONlwEIrAB+DD1rkSjou2A468NSbe0s+huOAoIWLbMEzLKKwbJ6MHJHdtD8tZ
 iud5y1igrOq4FlbSGz0TkWeurRPGFwN25U+SAcy3E7VJXjqWzjDUyH18dzCXICJmi+rd
 ZDRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772142070; x=1772746870;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=;
 b=OVvxURCR6zNju1zeDuOwCBFt4yrQGO04lhT1ZW/5fBWNbuT0M4Gbdl2f3eyHVfwKrX
 BSolO9qEvaaQrG2MyA/C0TNZPBV/cF6h7VAUpHySbhWqMfIyLsojumfCNaw9wemqKZQL
 TDFqhbGo3zsiAEE4fJza2fGQPpoHuD1+jf6h6zYGrJCJIiMy540Qv3Co8hqld/9v1xZg
 jdKK4ftRfviTHA9lDrEEPxJs6mjyTLBloR5/LkxgR8E4r4AoAR/cqDu/m+NKmtGRcfQB
 ZxWAp2eCTH6EDl2w6H2S7v0nx+5ECbGQpYttSsN2tARkoJggtvC3KUiIZ+Gm/fjy/bzT
 Lx3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTKZsWAgTkVB6Oe0nWnHNitH4aGld9oYKMH7KcHG8rfwUGrWiPec0xRnvcv2lzM59LKF7ZUvqT7pfbFue/8g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yycj5vv7t95/zLFkUkFYocUrglyfW7bK8WRAtWfvZ/HxDGhiv2z
 M5cHl3XzpfOY+UaC/9lzRcN60f/BwjxLw0ZJ7VpmW56tQlfXZvBRVjxsKkt8KWGHEY5cs8j6F1m
 K7QUnJbaU72KoBT+uxMjRpsUfrtzDSNOkpXqbk+EU2D0AXKElAYN6JA==
X-Gm-Gg: ATEYQzyJkDfgwWSkpWrO5rUn2QVKoXhHthWIi5i9xNe9+YsZ8uyzhyVZa5Na54MSvm1
 lEOPNtNjWjRK4A5/ykKDArea/Vwpv3cSQk5WYHqU7WfkqEARBDBQK/QqU7LU+YYXbfXFCa3VGBX
 Uw/VXaoOmPnp+P6zDyBhFCj+gnq28vuabXGnVrS8+q1Cx+Ci39207inR+ALc4t4a/CPeqouLorS
 hp3YA2WU5ymaaZCaeY5F4JmDhfLJCxsGAo5nJTtrBLkVL3DKBhEYl1jP108YWrU4OMzWHju3GZ6
 arFye0Y=
X-Received: by 2002:a17:90b:574f:b0:359:877:370f with SMTP id
 98e67ed59e1d1-35965ccf029mr498632a91.17.1772140313953; Thu, 26 Feb 2026
 13:11:53 -0800 (PST)
MIME-Version: 1.0
References: <20260226-iino-u64-v1-0-ccceff366db9@kernel.org>
 <20260226-iino-u64-v1-51-ccceff366db9@kernel.org>
In-Reply-To: <20260226-iino-u64-v1-51-ccceff366db9@kernel.org>
Date: Thu, 26 Feb 2026 16:11:41 -0500
X-Gm-Features: AaiRm51CHDvKlRV2Z04ZUK5c4lU9AiJhpRFTzD6a70HHA0FgEKDqsojtRqG1Wpw
Message-ID: <CAHC9VhTPutzjNfYoRJigC2AQS4wz1A3vTEYn2koeR0kKetYk0w@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 26,
 2026 at 11:06 AM Jeff Layton <jlayton@kernel.org>
 wrote: > > Update %lu/%ld to %llu/%lld in security audit logging functions
 that > print inode->i_ino, since i_ino is now u64. > > File [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
X-Headers-End: 1vvj6n-0006eV-HD
X-Mailman-Approved-At: Fri, 27 Feb 2026 14:33:53 +0000
Subject: Re: [Jfs-discussion] [PATCH 51/61] security: update audit format
 strings for u64 i_ino
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
 linux-hams@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 Fan Wu <wufan@kernel.org>, ceph-devel@vger.kernel.org,
 James Morris <jmorris@namei.org>, Tyler Hicks <code@tyhicks.com>,
 Christoph Hellwig <hch@infradead.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Martin Schiller <ms@dev.tdt.de>,
 Jan Harkes <jaharkes@cs.cmu.edu>, Willem de Bruijn <willemb@google.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-fscrypt@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 David Hildenbrand <david@kernel.org>, Eric Van Hensbergen <ericvh@kernel.org>,
 Zhihao Cheng <chengzhihao1@huawei.com>, Christian Brauner <brauner@kernel.org>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, Chuck Lever <chuck.lever@oracle.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 Jan Kara <jack@suse.com>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org, Trond Myklebust <trondmy@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 Mimi Zohar <zohar@linux.ibm.com>, Oleg Nesterov <oleg@redhat.com>,
 Eric Dumazet <edumazet@google.com>, Simona Vetter <simona@ffwll.ch>,
 linux-cifs@vger.kernel.org, Kuniyuki Iwashima <kuniyu@google.com>,
 linux-nilfs@vger.kernel.org, codalist@coda.cs.cmu.edu,
 linux-trace-kernel@vger.kernel.org, Olga Kornievskaia <okorniev@redhat.com>,
 Yangtao Li <frank.li@vivo.com>, selinux@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 netfs@lists.linux.dev, Jaegeuk Kim <jaegeuk@kernel.org>,
 fsverity@lists.linux.dev, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Nicolas Pitre <nico@fluxnic.net>, Muchun Song <muchun.song@linux.dev>,
 Roberto Sassu <roberto.sassu@huawei.com>,
 "David S. Miller" <davem@davemloft.net>, Anna Schumaker <anna@kernel.org>,
 linux-integrity@vger.kernel.org, Alex Markuze <amarkuze@redhat.com>,
 Martin Brandenburg <martin@omnibond.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 ocfs2-devel@lists.linux.dev, jfs-discussion@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Ian Kent <raven@themaw.net>, Naohiro Aota <naohiro.aota@wdc.com>,
 Eric Biggers <ebiggers@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 Matthew Wilcox <willy@infradead.org>, coda@cs.cmu.edu,
 NeilBrown <neil@brown.name>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Amir Goldstein <amir73il@gmail.com>, James Clark <james.clark@linaro.org>,
 autofs@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Damien Le Moal <dlemoal@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, linux-mm@kvack.org,
 samba-technical@lists.samba.org, Ondrej Mosnacek <omosnace@redhat.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev,
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
 Eric Snowberg <eric.snowberg@oracle.com>, linux-x25@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, Ingo Molnar <mingo@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Salah Triki <salah.triki@gmail.com>,
 Simon Horman <horms@kernel.org>, Chao Yu <chao@kernel.org>,
 apparmor@lists.ubuntu.com, Tom Talpey <tom@talpey.com>,
 Bharath SM <bharathsm@microsoft.com>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Namhyung Kim <namhyung@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 John Johansen <john.johansen@canonical.com>,
 Luis de Bethencourt <luisbg@kernel.org>, netdev@vger.kernel.org,
 v9fs@lists.linux.dev, Adrian Hunter <adrian.hunter@intel.com>,
 linux-security-module@vger.kernel.org, Johannes Thumshirn <jth@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jlayton@kernel.org,m:lucho@ionkov.net,m:nvdimm@lists.linux.dev,m:pc@manguebit.org,m:djwong@kernel.org,m:al@alarsen.net,m:dri-devel@lists.freedesktop.org,m:linux-hams@vger.kernel.org,m:sumit.semwal@linaro.org,m:hubcap@omnibond.com,m:linux-xfs@vger.kernel.org,m:wufan@kernel.org,m:ceph-devel@vger.kernel.org,m:jmorris@namei.org,m:code@tyhicks.com,m:hch@infradead.org,m:devel@lists.orangefs.org,m:sprasad@microsoft.com,m:ms@dev.tdt.de,m:jaharkes@cs.cmu.edu,m:willemb@google.com,m:acme@kernel.org,m:linux-fscrypt@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:ronniesahlberg@gmail.com,m:glaubitz@physik.fu-berlin.de,m:david@kernel.org,m:ericvh@kernel.org,m:chengzhihao1@huawei.com,m:brauner@kernel.org,m:dmitry.kasatkin@gmail.com,m:stephen.smalley.work@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:chuck.lever@oracle.com,m:mhiramat@kernel.org,m:jolsa@kernel.org,m:jack@suse.com,m:alexander.deucher@amd.com,m:linux-media@vger.kernel.org,m:trondmy
 @kernel.org,m:mark.rutland@arm.com,m:shaggy@kernel.org,m:zohar@linux.ibm.com,m:oleg@redhat.com,m:edumazet@google.com,m:simona@ffwll.ch,m:linux-cifs@vger.kernel.org,m:kuniyu@google.com,m:linux-nilfs@vger.kernel.org,m:codalist@coda.cs.cmu.edu,m:linux-trace-kernel@vger.kernel.org,m:okorniev@redhat.com,m:frank.li@vivo.com,m:selinux@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:casey@schaufler-ca.com,m:netfs@lists.linux.dev,m:jaegeuk@kernel.org,m:fsverity@lists.linux.dev,m:tytso@mit.edu,m:nico@fluxnic.net,m:muchun.song@linux.dev,m:roberto.sassu@huawei.com,m:davem@davemloft.net,m:anna@kernel.org,m:linux-integrity@vger.kernel.org,m:amarkuze@redhat.com,m:martin@omnibond.com,m:alexander.shishkin@linux.intel.com,m:ocfs2-devel@lists.linux.dev,m:jfs-discussion@lists.sourceforge.net,m:linux-mtd@lists.infradead.org,m:amd-gfx@lists.freedesktop.org,m:marc.dionne@auristor.com,m:linux-afs@lists.infradead.org,m:raven@themaw.net,m:naohiro.aota@wdc.com,m:ebiggers@kernel.org,m:miklos@szeredi.hu,m:wi
 lly@infradead.org,m:coda@cs.cmu.edu,m:neil@brown.name,m:idryomov@gmail.com,m:pabeni@redhat.com,m:serge@hallyn.com,m:amir73il@gmail.com,m:james.clark@linaro.org,m:autofs@vger.kernel.org,m:rostedt@goodmis.org,m:dlemoal@kernel.org,m:mathieu.desnoyers@efficios.com,m:dan.j.williams@intel.com,m:osalvador@suse.de,m:almaz.alexandrovich@paragon-software.com,m:linux-nfs@vger.kernel.org,m:linux-ext4@vger.kernel.org,m:linux-mm@kvack.org,m:samba-technical@lists.samba.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,paul-moore.com:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[144];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[ionkov.net,lists.linux.dev,manguebit.org,kernel.org,alarsen.net,lists.freedesktop.org,vger.kernel.org,linaro.org,omnibond.com,namei.org,tyhicks.com,infradead.org,lists.orangefs.org,microsoft.com,dev.tdt.de,cs.cmu.edu,google.com,zeniv.linux.org.uk,gmail.com,physik.fu-berlin.de,huawei.com,oracle.com,suse.com,amd.com,arm.com,linux.ibm.com,redhat.com,ffwll.ch,coda.cs.cmu.edu,vivo.com,lists.linaro.org,schaufler-ca.com,mit.edu,fluxnic.net,linux.dev,davemloft.net,linux.intel.com,lists.sourceforge.net,lists.infradead.org,auristor.com,themaw.net,wdc.com,szeredi.hu,brown.name,hallyn.com,goodmis.org,efficios.com,intel.com,suse.de,paragon-software.com,kvack.org,lists.samba.org,samba.org,suse.cz,codewreck.org,crudebyte.com,linux.alibaba.com,dilger.ca,artax.karlin.mff.cuni.cz,nod.at,fasheh.com,lists.ubuntu.com,talpey.com,canonical.com,evilplan.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[paul@paul-moore.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,paul-moore.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C220D1B90A5
X-Rspamd-Action: no action

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgMTE6MDbigK9BTSBKZWZmIExheXRvbiA8amxheXRvbkBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+IFVwZGF0ZSAlbHUvJWxkIHRvICVsbHUvJWxsZCBpbiBzZWN1
cml0eSBhdWRpdCBsb2dnaW5nIGZ1bmN0aW9ucyB0aGF0Cj4gcHJpbnQgaW5vZGUtPmlfaW5vLCBz
aW5jZSBpX2lubyBpcyBub3cgdTY0Lgo+Cj4gRmlsZXMgdXBkYXRlZDogYXBwYXJtb3IvYXBwYXJt
b3Jmcy5jLCBpbnRlZ3JpdHkvaW50ZWdyaXR5X2F1ZGl0LmMsCj4gaXBlL2F1ZGl0LmMsIGxzbV9h
dWRpdC5jLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9y
Zz4KPiAtLS0KPiAgc2VjdXJpdHkvYXBwYXJtb3IvYXBwYXJtb3Jmcy5jICAgICAgIHwgIDQgKyst
LQo+ICBzZWN1cml0eS9pbnRlZ3JpdHkvaW50ZWdyaXR5X2F1ZGl0LmMgfCAgMiArLQo+ICBzZWN1
cml0eS9pcGUvYXVkaXQuYyAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICBzZWN1cml0eS9sc21f
YXVkaXQuYyAgICAgICAgICAgICAgICAgfCAxMCArKysrKy0tLS0tCj4gIHNlY3VyaXR5L3NlbGlu
dXgvaG9va3MuYyAgICAgICAgICAgICB8ICA0ICsrLS0KPiAgc2VjdXJpdHkvc21hY2svc21hY2tf
bHNtLmMgICAgICAgICAgIHwgMTIgKysrKysrLS0tLS0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgMTcg
aW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgouLi4KCj4gZGlmZiAtLWdpdCBhL3NlY3Vy
aXR5L2xzbV9hdWRpdC5jIGIvc2VjdXJpdHkvbHNtX2F1ZGl0LmMKPiBpbmRleCA3ZDYyM2IwMDQ5
NWMxNGIwNzllMTBlOTYzYzIxYTlmOTQ5YzExZjA3Li43MzdmNWEyNjNhOGY3OTQxNjEzMzMxNWVk
ZjM2M2VjZTNkNzljNzIyIDEwMDY0NAo+IC0tLSBhL3NlY3VyaXR5L2xzbV9hdWRpdC5jCj4gKysr
IGIvc2VjdXJpdHkvbHNtX2F1ZGl0LmMKCkV2ZXJ5dGhpbmcgaW4gc2VjdXJpdHkvbHNtX2F1ZGl0
LmMgbG9va3Mgb2theS4KCj4gZGlmZiAtLWdpdCBhL3NlY3VyaXR5L3NlbGludXgvaG9va3MuYyBi
L3NlY3VyaXR5L3NlbGludXgvaG9va3MuYwo+IGluZGV4IGQ4MjI0ZWExMTNkMWFjMjczYWFjMWZi
NTIzMjRmMDBiMzMwMWFlNzUuLjE1MGVhODZlYmMxZjdjN2Y4MzkxYWY0MTA5YTNkYTgyYjEyZDAw
ZDIgMTAwNjQ0Cj4gLS0tIGEvc2VjdXJpdHkvc2VsaW51eC9ob29rcy5jCj4gKysrIGIvc2VjdXJp
dHkvc2VsaW51eC9ob29rcy5jCj4gQEAgLTE0MDAsNyArMTQwMCw3IEBAIHN0YXRpYyBpbnQgaW5v
ZGVfZG9pbml0X3VzZV94YXR0cihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZGVudHJ5ICpk
ZW50cnksCj4gICAgICAgICBpZiAocmMgPCAwKSB7Cj4gICAgICAgICAgICAgICAgIGtmcmVlKGNv
bnRleHQpOwo+ICAgICAgICAgICAgICAgICBpZiAocmMgIT0gLUVOT0RBVEEpIHsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICBwcl93YXJuKCJTRUxpbnV4OiAlczogIGdldHhhdHRyIHJldHVybmVk
ICVkIGZvciBkZXY9JXMgaW5vPSVsZFxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICBwcl93
YXJuKCJTRUxpbnV4OiAlczogIGdldHhhdHRyIHJldHVybmVkICVkIGZvciBkZXY9JXMgaW5vPSVs
bGRcbiIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNfXywgLXJjLCBp
bm9kZS0+aV9zYi0+c19pZCwgaW5vZGUtPmlfaW5vKTsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gcmM7Cj4gICAgICAgICAgICAgICAgIH0KCkFkZGl0aW9uYWxseSwgbGF0ZXIgaW4g
dGhpcyBmdW5jdGlvbiB0aGVyZSBhcmUgcHJfbm90aWNlX3JhdGVsaW1pdGVkKCkKYW5kIHByX3dh
cm4oKSBjYWxscyB0aGF0IHByaW50IGlub2RlIG51bWJlcnMgYW5kIG5lZWQgdG8gYmUgdXBkYXRl
ZC4KCi0tIApwYXVsLW1vb3JlLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
