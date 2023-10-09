Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD15B7BE395
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Oct 2023 16:53:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qprd7-0000s6-Pl;
	Mon, 09 Oct 2023 14:53:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qprd5-0000s0-R7
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 14:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZgrGHyhh24SlGacSkXVqyUBpWvWe6J5YeMe4c0ejHI=; b=HfMoftx/l3Dne+158EdJAwoRR+
 WNq0MHcCf5NbdtCnXoehMbG00GNlfSJsj+SbnENBz4kTdPC57GtcDAn6DAjXKhs7J18rEqZwuQge6
 QsmXMy2Y/mKeKPwR8dWaiJWlXeIeat1qXMVIxE4doJiTtG57B2WAB0GjARKwxSvxOXAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZgrGHyhh24SlGacSkXVqyUBpWvWe6J5YeMe4c0ejHI=; b=Fo0wisEz3KG1WTJP/yDEnstOJD
 OAM5LMhqAH8a8erF3cZDf27t9gLRP8cjx8gIHojD69ERa+vcv9+uahFTgL5zutGIlpr13+QuNmWZv
 OqPeIiXSWoNdqamxayi7OgS+FB32ag9cnBnmksYIqMPBFuK/4HvIrA4CNh23xxtcVz9A=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qprd1-008V9f-7z for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 14:53:06 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-4065dea9a33so44861515e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Oct 2023 07:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1696863177; x=1697467977; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GZgrGHyhh24SlGacSkXVqyUBpWvWe6J5YeMe4c0ejHI=;
 b=Mm1qjvHhYmgrclPrenT5OjtlQ/j6zzkuzZUyjPjiq3cRO2UAgWT7z+OtMl6hgLYPlG
 RjEePOfM5KWDqXrrTai7SAoc0HF2WxqvLqeulWa033qCBdH84TFyAxvZsJMtxWi28DOD
 8wPgSz4gdokARqk3j88YmdYEJKFjSJyTCEEv+P65Pc/ES1dkjIJ9gcegOUn5qw34Yk4O
 CTujy5c2tY2SzHR6aCvv8G8GpdhSn5a2164C81ljouritW/kpjZKpjk1urnkEBTIHTQV
 qyA/ansuWdDROoJf0RtOBFzn4hMolp96fVGy+JsIe3dOpjrMT/38usY+/2dNhxm0qThK
 lS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696863177; x=1697467977;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GZgrGHyhh24SlGacSkXVqyUBpWvWe6J5YeMe4c0ejHI=;
 b=QwMkWyxMSbpfZNJW38V9zZofukWJRZIuQPrYtC5UhQT2UynA2mcGUvzsHq9OilyRhP
 zD8HLcu1fYFPExFygaYyXgtjhOrIrxU2VWpzdbimlTf5ctsCE0Ea+ikkN4HOcqmJJgU1
 oOV5Gv9eAdZK+viusLkkQPB/0mflR4U+qRJOyWn2Y1W+jdmY5QrS323K1oay8j65McAI
 2VUauPSX0obv2XYR2x32PGkVrKXX3zOILGzdN5T2aG2pMFzBOciIzy9Os1UojIzi35PU
 CZbQIjqWx/4OoGCDms7UB+AJQaEcZlkumNHilpKShT6EI5zdBHziwZNyq6ZQrB20gVrn
 hxCQ==
X-Gm-Message-State: AOJu0YwSFqFkmlRrFlJzMw5bl/Z5+nzsRGJHnr5ZdG6sMMcIPm3tObb+
 AkaPm+LVr0dKKCSQbNqFX4DEY/DtVOC+St0v4qeA6L4BXic5XwU/
X-Google-Smtp-Source: AGHT+IEDF91AvHzJpEgtXdwIiAxumKeC+rEr/GbEpvbUT0VJVZba6pc2wxKxrHSdG/c5v7SZWrawJk6SFkdCVO2SYiE=
X-Received: by 2002:a2e:7204:0:b0:2c0:21b6:e80c with SMTP id
 n4-20020a2e7204000000b002c021b6e80cmr13617400ljc.35.1696862748450; Mon, 09
 Oct 2023 07:45:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230919081900.1096840-1-max.kellermann@ionos.com>
 <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
In-Reply-To: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
Date: Mon, 9 Oct 2023 16:45:37 +0200
Message-ID: <CAKPOu+9aeEXf=HdVMeG-o17NeDZd8=+LGxD4QYER2ibUPbH6kw@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Oct 3, 2023 at 5:32 PM Dave Kleikamp <dave.kleikamp@oracle.com>
    wrote: > I think this is sane, but the patch needs a description of why this
    is > necessary for these specific file systems. Indeed the patch description
    was lacking, sorry. I sent v2 with a better description. 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qprd1-008V9f-7z
Subject: Re: [Jfs-discussion] [PATCH] fs: apply umask if POSIX ACL support
 is disabled
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
From: Max Kellermann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Max Kellermann <max.kellermann@ionos.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Jan Kara <jack@suse.com>, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBPY3QgMywgMjAyMyBhdCA1OjMy4oCvUE0gRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVp
a2FtcEBvcmFjbGUuY29tPiB3cm90ZToKPiBJIHRoaW5rIHRoaXMgaXMgc2FuZSwgYnV0IHRoZSBw
YXRjaCBuZWVkcyBhIGRlc2NyaXB0aW9uIG9mIHdoeSB0aGlzIGlzCj4gbmVjZXNzYXJ5IGZvciB0
aGVzZSBzcGVjaWZpYyBmaWxlIHN5c3RlbXMuCgpJbmRlZWQgdGhlIHBhdGNoIGRlc2NyaXB0aW9u
IHdhcyBsYWNraW5nLCBzb3JyeS4gSSBzZW50IHYyIHdpdGggYQpiZXR0ZXIgZGVzY3JpcHRpb24u
CgpNYXgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpK
ZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1k
aXNjdXNzaW9uCg==
