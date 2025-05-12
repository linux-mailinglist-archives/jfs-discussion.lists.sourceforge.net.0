Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85608AB3CD1
	for <lists+jfs-discussion@lfdr.de>; Mon, 12 May 2025 17:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RDH2s8Jl3PQGml+afr7dE3FyeEAEZq0+yyvpVPqSdrk=; b=i3DcfJAGl4V21CjdU/IPFHA7+y
	JoRRYQTd1RUJO320b2yocnq/67FkX3/yeu1NEqZNaz5B/aKDauCZoeBNPgt+bhGQUCAjLYvlTabJG
	J625/1TGucDXd6hZhnALHGRyRMcA6GOS5BpD9l2IfQiqGW/gJzk5fXVdxaewd0Ayrk0Q=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uEVX4-0007VT-KR;
	Mon, 12 May 2025 15:57:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zzzccc427@gmail.com>) id 1uEK8e-0000bG-KR
 for jfs-discussion@lists.sourceforge.net;
 Mon, 12 May 2025 03:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NL+yU8DQX37Je7KjgdKfp+OiEdWzsk8Nawd3p2oxSjc=; b=aC9+iY/Qqoi32JiInXbO1EP32E
 5QDlhbUeX6WgrrFpJQNFsV6aiY6+9QMwkfCD4g/8qnNRig0Pi9JaA2ojpSsOMgjbkhPXvVimt9G4n
 WunCyAfoK8pMqjOBmywUfUfckytTkqsikiV42OAofKl76ogZwmlOQDi4ksj7eVMB0AIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :MIME-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NL+yU8DQX37Je7KjgdKfp+OiEdWzsk8Nawd3p2oxSjc=; b=J
 p1hyJFSpVzYg4beojaOOa8cy7jYRvvoyfRQlrttKOlO/zUeWK4UGAUyFBJK/33PpeQ7r4atR1Ankm
 6hU4Czmz2GtL4CQeHBUFle7ii112lr/nCL2u+8POmFRo61/C3BxsVB9nvbdcJKwlREnuRImfv1SYg
 0R/1k3DQepOOj+MQ=;
Received: from mail-yb1-f180.google.com ([209.85.219.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uEK8d-0007ve-WC for jfs-discussion@lists.sourceforge.net;
 Mon, 12 May 2025 03:47:36 +0000
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-e694601f624so2935106276.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 11 May 2025 20:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747021650; x=1747626450; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NL+yU8DQX37Je7KjgdKfp+OiEdWzsk8Nawd3p2oxSjc=;
 b=dg4iz5EMaPJvlQZpDi+MqYhdkMX8ospprrxwPQydXLJ35uG+YlAsg8tJSvB4rUsun8
 m8VHvZuBco/vT2ePGuBvsNxOjlFf7LV4R41HSeYX66vYbWfNSu9mU7G54G57ibkrgQPb
 khA29YxS/zD33DbrmB1mCMuZRuqRRnate1GcFbws4ZWFPYkcnP9/pvxS4wTgQcUkABlD
 j7vsRm/Lh8iE+FhUXmVMVVfASTgXwokMWo3a0+zxTibY5mHUzH4xzYW3pAmp8wRuwIzD
 S2h8F0rVZNtHHuKalB4GX5Wbc68ZB+iaJfUG8ut6INnHolk6+Nl9NAqdWCailu92cNNG
 F+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747021650; x=1747626450;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NL+yU8DQX37Je7KjgdKfp+OiEdWzsk8Nawd3p2oxSjc=;
 b=sag4muTrBH5oObWM26P1+BUQaj6xoeFlVB+nG432VUwaGGp++Sy5zcYO4JZVesmDBa
 MwpxYTunXYUNBgien/tKmYAksM0l/oE7Zv9D8E6g69HtKUFxJlEKTgutYX5FosR1ppXe
 oObI9Xqe/y/3OABykS5LzL/PGFo7E7US0cCFjFDVCIbtAZRUh3T923XXnMjLTy84T4mj
 J5BtClCW3ACRol1h5fc+PxeTqWXQybJDDcLuZ3m5yD4LbIHC6k2+uuEKFSk+mmvlel3h
 MwqTFBjVqberACZ+C9UrP3f0yEWPEyLU6zKXMP3fS8eszp5oLIl77fDcwXOT2vCLyifV
 4D2A==
X-Gm-Message-State: AOJu0YwGtUyf9BON4K9jcvak7hQpLWJ3FU+WNZ6FPQZecaR7NdiwBbeY
 ZCSpeuFymslduMJwLFW4BegIamsiZVAnSZhYwni3mvSxdHvrHGwVxlId7lNCPz06tSoMEA8qlz0
 UlGrDQBN+Mth27tH3aDutolh7HWU=
X-Gm-Gg: ASbGncuvZti4G/D/rs4oEalo1khlzxRyc6ztOYF2/u50wGOCyeduWSgboJF+4Oi5rPk
 hThX3IQcpTLQ3blTK7ZtaY4X3Wp4uqakro1jrU1CPuyOaV0y6WPLEj9bR644E9HVyMazuqylhQc
 Rrbq4s7JcoWwgogNshYDLFu6qy768Rienk1+dFpwKa
X-Google-Smtp-Source: AGHT+IFPFw+gJ/bQF2EwthAafjiLOofQU+haxcT+mEDKtNeE7L2EguezzCE/O54eia+EP/Bq1tvfjjLJZedEgYEvHLw=
X-Received: by 2002:a05:6902:2085:b0:e78:ed39:f4e3 with SMTP id
 3f1490d57ef6-e78fdd72b54mr15432447276.45.1747021650188; Sun, 11 May 2025
 20:47:30 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 12 May 2025 11:47:17 +0800
X-Gm-Features: AX0GCFs8C_LhWlDacxAZHsu0N81IK8AEzzpyvWqGqBP64pef1298kKQjrfTrU70
Message-ID: <CAFRLqsVpY4EtBKoJHwafoeTfd3wF2Q2ga924FTNBG5pVLCBnKw@mail.gmail.com>
To: shaggy@kernel.org
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I would like to report a data race bug detected in the jfs
 filesystem on Linux kernel 6.14-rc4. The issue was discovered by our tools,
 which identified unsynchronized concurrent accesses to `jfs_ip->b [...] 
 Content analysis details:   (1.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zzzccc427(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [zzzccc427(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.180 listed in list.dnswl.org]
X-Headers-End: 1uEK8d-0007ve-WC
X-Mailman-Approved-At: Mon, 12 May 2025 15:57:33 +0000
Subject: [Jfs-discussion] [BUG] Data race on xtSearch about jfs_ip->btindex
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
From: cen zhang via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: cen zhang <zzzccc427@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, baijiaju1990@gmail.com,
 linux-kernel@vger.kernel.org, zhenghaoran154@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SSB3b3VsZCBsaWtlIHRvIHJlcG9ydCBhIGRhdGEgcmFjZSBidWcgZGV0ZWN0ZWQgaW4KdGhlIGpm
cyBmaWxlc3lzdGVtIG9uIExpbnV4IGtlcm5lbCA2LjE0LXJjNC4KVGhlIGlzc3VlIHdhcyBkaXNj
b3ZlcmVkIGJ5IG91ciB0b29scywKd2hpY2ggaWRlbnRpZmllZCB1bnN5bmNocm9uaXplZCBjb25j
dXJyZW50IGFjY2Vzc2VzIHRvCmBqZnNfaXAtPmJ0aW5kZXhgLgo9PT09PT09PT09PT0gREFUQVJB
Q0UgPT09PT09PT09PT09CkZ1bmN0aW9uOiB4dFNlYXJjaCsweDI2OGMvMHgzZDYwIGZzL2pmcy9q
ZnNfeHRyZWUuYzo0NTEKRnVuY3Rpb246IHh0TG9va3VwKzB4NGQ3LzB4MTQ5MCBmcy9qZnMvamZz
X3h0cmVlLmM6MTUyCkZ1bmN0aW9uOiBqZnNfZ2V0X2Jsb2NrKzB4NTIwLzB4MjEzMCBmcy9qZnMv
aW5vZGUuYzoyMTgKRnVuY3Rpb246IF9fYmxvY2tkZXZfZGlyZWN0X0lPKzB4MTYyOS8weDNlMjAK
RnVuY3Rpb246IGpmc19kaXJlY3RfSU8rMHgzMDQvMHg2MTAgaW5jbHVkZS9saW51eC9mcy5oOjM0
MTIKRnVuY3Rpb246IGdlbmVyaWNfZmlsZV9yZWFkX2l0ZXIrMHgyZDIvMHg0MTAKRnVuY3Rpb246
IHZmc19yZWFkKzB4NzQ1LzB4YWEwCkZ1bmN0aW9uOiBrc3lzX3JlYWQrMHgxMTYvMHgyMDAKRnVu
Y3Rpb246IGRvX3N5c2NhbGxfNjQrMHhjOS8weDFhMApGdW5jdGlvbjogZW50cnlfU1lTQ0FMTF82
NF9hZnRlcl9od2ZyYW1lKzB4NzcvMHg3ZgpGdW5jdGlvbjogMHgwCj09PT09PT09PT09PU9USEVS
X0lORk89PT09PT09PT09PT0KRnVuY3Rpb246IHh0U2VhcmNoKzB4MjU5My8weDNkNjAgZnMvamZz
L2pmc194dHJlZS5jOjQ0NgpGdW5jdGlvbjogeHRMb29rdXArMHg0ZDcvMHgxNDkwIGZzL2pmcy9q
ZnNfeHRyZWUuYzoxNTIKRnVuY3Rpb246IGpmc19nZXRfYmxvY2srMHg1MjAvMHgyMTMwIGZzL2pm
cy9pbm9kZS5jOjIxOApGdW5jdGlvbjogYmxvY2tfcmVhZF9mdWxsX2ZvbGlvKzB4MzVlLzB4OWIw
CkZ1bmN0aW9uOiBkb19tcGFnZV9yZWFkcGFnZSsweGVkMy8weDEwNzAKRnVuY3Rpb246IG1wYWdl
X3JlYWRfZm9saW8rMHhiOC8weDE2MApGdW5jdGlvbjogamZzX3JlYWRfZm9saW8rMHgzYS8weDYw
IGZzL2pmcy9pbm9kZS5jOjI3NQpGdW5jdGlvbjogZmlsZW1hcF9yZWFkX2ZvbGlvKzB4NTQvMHgx
NDAKRnVuY3Rpb246IGZpbGVtYXBfZ2V0X3BhZ2VzKzB4MTAyYi8weDE0YzAKRnVuY3Rpb246IGZp
bGVtYXBfcmVhZCsweDM0ZS8weGI5MApGdW5jdGlvbjogdmZzX3JlYWQrMHg3NDUvMHhhYTAKRnVu
Y3Rpb246IGtzeXNfcmVhZCsweDExNi8weDIwMApGdW5jdGlvbjogZG9fc3lzY2FsbF82NCsweGM5
LzB4MWEwCkZ1bmN0aW9uOiBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3Ny8weDdm
Cj09PT09PT09PT09PT09PT09RU5EPT09PT09PT09PT09PT0KClRoZSBjb2RlIGxvY2F0aW9ucyBp
bnZvbHZlZCBpbiB0aGUgZGF0YSByYWNlIGFyZToKClJlYWQgKGZzL2pmcy9qZnNfeHRyZWUuYyk6
CnN0YXRpYyBpbnQgeHRTZWFyY2goc3RydWN0IGlub2RlICppcCwgczY0IHhvZmYsIHM2NCAqbmV4
dHAsCiAgICAgICAgICAgIGludCAqY21wcCwgc3RydWN0IGJ0c3RhY2sgKiBidHN0YWNrLCBpbnQg
ZmxhZykKewogICAgICAgICAgICAuLi4KICAgICAgICAgICAgLyogaW5pdCBzZXF1ZW50aWFsIGFj
Y2VzcyBoZXVyaXN0aWNzICovCiAgICAgICAgICAgIGJ0aW5kZXggPSBqZnNfaXAtPmJ0aW5kZXg7
CiAgICAgICAgICAgIC4uLgp9CgpXcml0ZSAoZnMvamZzL2pmc194dHJlZS5jKToKc3RhdGljIGlu
dCB4dFNlYXJjaChzdHJ1Y3QgaW5vZGUgKmlwLCBzNjQgeG9mZiwgczY0ICpuZXh0cCwKICAgICAg
ICAgICAgaW50ICpjbXBwLCBzdHJ1Y3QgYnRzdGFjayAqIGJ0c3RhY2ssIGludCBmbGFnKQp7CiAg
ICAgICAgICAgIC4uLgogICAgICAgICAgICAgICAgamZzX2lwLT5idG9yZGVyID0gQlRfUkFORE9N
OwogICAgICAgICAgICBqZnNfaXAtPmJ0aW5kZXggPSBiYXNlOwogICAgICAgICAgICAuLi4KfQpJ
4oCZdmUgdmVyaWZpZWQgdGhhdCB0aGlzIGlzc3VlIHN0aWxsIGV4aXN0cyBpbiB0aGUgbGF0ZXN0
IHNvdXJjZSB0cmVlClRoYW5rIHlvdSBmb3IgeW91ciBhdHRlbnRpb24gdG8gdGhpcyBtYXR0ZXIu
CkJlc3QgcmVnYXJkcywKQ2VuIFpoYW5nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
